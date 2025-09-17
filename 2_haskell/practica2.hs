

-- 1) Promedio de 4 números
promedio4 :: Double -> Double -> Double -> Double -> Double
promedio4 a b c d = (a + b + c + d) / 4

-- 2) Suma de monedas 
sumaMonedas :: Int -> Int -> Int -> Int -> Double
sumaMonedas a b c d = fromIntegral (a*1 + b*5 + c*10 + d*50)

-- 3) Volumen de una esfera
volumenEsfera :: Double -> Double
volumenEsfera r = (4/3) * pi * r^3

-- 4) Verificar si a, b y c son iguales
todosIguales :: Int -> Int -> Int -> Bool
todosIguales a b c = (a == b) && (b == c)

-- 5) Verificar si a, b y c son diferentes
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = (a /= b) && (a /= c) && (b /= c)

-- 6) Precio final con descuento
precioFinal :: Double -> Double
precioFinal compra
    | compra > 1000 = compra * 0.60
    | compra > 500  = compra * 0.70
    | compra > 100  = compra * 0.90
    | otherwise     = compra

-- 7) Última cifra de un número
ultimaCifra :: Int -> Int
ultimaCifra n = abs n `mod` 10


menu :: IO ()
menu = do
    putStrLn "========== MENU =========="
    putStrLn "1) Promedio de 4 numeros"
    putStrLn "2) Sumar monedas ($1,$5,$10,$50)"
    putStrLn "3) Volumen de una esfera"
    putStrLn "4) Verificar si a,b,c son iguales"
    putStrLn "5) Verificar si a,b,c son diferentes"
    putStrLn "6) Precio final con descuento"
    putStrLn "7) Ultima cifra de un numero"
    putStrLn "8) SALIR"
    putStrLn "Selecciona una opcion: "
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Introduce 4 numeros:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            n4 <- getLine
            let a = read n1 :: Double
            let b = read n2 :: Double
            let c = read n3 :: Double
            let d = read n4 :: Double
            putStrLn ("El promedio es: " ++ show (promedio4 a b c d))
            menu
        "2" -> do
            putStrLn "Cuantas monedas de $1?:"
            n1 <- getLine
            putStrLn "Cuantas monedas de $5?:"
            n2 <- getLine
            putStrLn "Cuantas monedas de $10?:"
            n3 <- getLine
            putStrLn "Cuantas monedas de $50?:"
            n4 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            let d = read n4 :: Int
            putStrLn ("Total: $" ++ show (sumaMonedas a b c d))
            menu
        "3" -> do
            putStrLn "Introduce el radio de la esfera:"
            r1 <- getLine
            let r = read r1 :: Double
            putStrLn ("Volumen = " ++ show (volumenEsfera r))
            menu
        "4" -> do
            putStrLn "Introduce 3 numeros:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿Son iguales?: " ++ show (todosIguales a b c))
            menu
        "5" -> do
            putStrLn "Introduce 3 numeros:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿Son diferentes?: " ++ show (todosDiferentes a b c))
            menu
        "6" -> do
            putStrLn "Introduce el total de compra:"
            n1 <- getLine
            let compra = read n1 :: Double
            putStrLn ("Precio final con descuento: $" ++ show (precioFinal compra))
            menu
        "7" -> do
            putStrLn "Introduce un numero:"
            n1 <- getLine
            let x = read n1 :: Int
            putStrLn ("La ultima cifra es: " ++ show (ultimaCifra x))
            menu
        "8" -> do
            putStrLn "Adios!"
        _ -> do
            putStrLn "Opcion no valida"
            menu


main :: IO ()
main = menu
