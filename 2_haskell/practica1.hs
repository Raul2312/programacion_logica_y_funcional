--1
valor_absoluto :: Integer -> Integer 
valor_absoluto x= abs x

--2
--menor_entero :: Integer -> Integer 
--menor_entero x= ceiling x

--3
sucesor :: Integer -> Integer 
sucesor x= succ x

--4
minimo :: Integer -> Integer -> Integer
minimo x y = min x y 

--5
maximo :: Integer -> Integer -> Integer
maximo x y = max x y 

--6
division :: Integer -> Integer -> Integer
division x y = div x y 

--7
modulo :: Integer -> Integer -> Integer
modulo x y = mod x y 

--8
xpar :: Integer -> Bool
xpar x= even x

--9
piso :: Double -> Integer
piso x= floor x

--10
maximo_divisor:: Integer -> Integer -> Integer
maximo_divisor x y = gcd x y 

--11
nobool :: Bool -> Bool
nobool x= not x

--12
verificar_par :: Integer -> Bool
verificar_par x= odd x

--13
verificar_positivo :: Integer -> Integer
verificar_positivo x= signum x

--14
retorna_segundo:: Integer -> Integer -> Integer
retorna_segundo x y = snd (x,y)






menu :: IO()
menu = do
    putStrLn("😂😂😂== MENU ==😂😂😂")
    putStrLn("Que deseas hacer?")
    putStrLn("1) Valor Absoluto")
    putStrLn("2) menor entero no menor que x")
    putStrLn("3) devuelve el valor siguiente de x")
    putStrLn("4) obtiene el menor de dos numeros ")
    putStrLn("5) obtiene el mayor de dos numeros ")
    putStrLn("6) Divide x entre y")
    putStrLn("7)Obtiene el modulo de x y")
    putStrLn("8) verifica si x es par")
    putStrLn("9) Numero mayor entero no mayor que x")
    putStrLn("10) Maximo comun divisor")
    putStrLn("11) negacion de booleana")
    putStrLn("12) Verifica si un numero es par")
    putStrLn("13) devuelve 1 si es positivo y -1 si es negativo ")
    putStrLn("14) retorna el segundo elemento")
    putStrLn("15)SALIR ")
    opcion <- getLine
    case opcion of 
        "1" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es:" ++ show(valor_absoluto x) )
            menu
       -- "2" -> do
         --   putStrLn("Introduce el numero:")
          --  n1 <- getLine
          --  let x = read n1 :: Integer
          --  putStrLn("El resultado es:" ++ show(menor_entero x) )
          --  menu
        "3" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es:" ++ show(succ x) )
            menu
        "4" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(minimo x y) )
            menu
        "5" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(maximo x y) )
            menu
        "6" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(div x y) )
            menu
        "7" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(modulo x y) )
            menu
        "8" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es:" ++ show(xpar x) )
            menu
        "9" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es:" ++ show(piso x) )
            menu
        "10" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(maximo_divisor x y) )
            menu
        "11" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("El resultado es:" ++ show(nobool x) )
            menu
        "12" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es:" ++ show(verificar_par x) )
            menu
        "13" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es:" ++ show(verificar_positivo x) )
            menu
        "14" -> do
            putStrLn("Introduce el numero:")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero:")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es:" ++ show(retorna_segundo x y) )
            menu
        "15" -> do
            putStrLn("Adios")
        _ -> do
            putStrLn("Opcion no valida")
            menu
        

main :: IO ()
main = menu