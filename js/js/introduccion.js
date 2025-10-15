var ul=document.getElementById("lista")

let url="https://thesimpsonsapi.com/api/"
let arr_original=[]
 var lis=""


 var getLista=(page)=>{
fetch(url+"characters?page="+page).then(response=>{
if(!response.ok){
    console.log("Error en la red")
}
return response.json()
}).then(data=>{
    console.log("Datos del personaje:",data)
   
    data.results.forEach(personaje=>{
        arr_original.push({
            personaje:personaje,
            datos:null

        })
        lis+=`
        <li>
        <img  src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px"/>
         <h2>${personaje.name}</h2>
        </li>`

    })
    ul.innerHTML=lis
    console.log("Arreglo Final",arr_original)
})
}
for(let i=1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
document.getElementById("preloader").style.display="none"
},1000)

const imprimir =(arr)=>{
    var todo="";
    arr.forEach(item=>{
        todo+=`
        <li>
        <img  src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px"/>
         <h2>${item.personaje.name}</h2>
        </li>`
    })
    ul.innerHTML=todo
}
document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault()
    imprimir(arr_original)
})
//edad < 18
document.querySelector("#linkedad").addEventListener('click',(evt)=>{
    //evitar recarga

    evt.preventDefault()
   
    let res=arr_original.filter((item)=>item.personaje.age > 50 && item.personaje.age != null)
    console.log("edad",res)
    imprimir(res)
})

//muertos

document.querySelector("#linkmuertos").addEventListener('click',(evt)=>{
    //evitar recarga

    evt.preventDefault()
   
    let res=arr_original.filter((item)=>item.personaje.status == "Deceased")
    console.log("Muertos",res)
    imprimir(res)
})

//menores de edad
document.querySelector("#menoresedad").addEventListener('click',(evt)=>{
    //evitar recarga

    evt.preventDefault()
   
    let res=arr_original.filter((item)=>item.personaje.age < 18 && item.personaje.age != null)
    console.log("Menor de edad",res)
    imprimir(res)
})



//Promedio de edad
document.querySelector("#promedioedad").addEventListener('click', (evt) => {
    evt.preventDefault();
 
    // Filtrar los personajes que tienen edad válida (> 0)
    let filtrados = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
 
    // Obtener el promedio
    let total = filtrados.reduce((acc, item) => acc + item.personaje.age, 0);
    let promedio = (filtrados.length > 0) ? (total / filtrados.length).toFixed(2) : 0;
 
    alert("El promedio de edad es: " + promedio);
});


//ordenar por acendente


document.querySelector("#ordenarASC").addEventListener('click', (evt) => {
    evt.preventDefault();
 
    // Filtrar los personajes que tienen edad válida (> 0)
    let filtrados = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
        filtrados.sort((a, b) => a.personaje.age - b.personaje.age);    
 
    console.log("Edad POR ASC",filtrados)
    imprimir(filtrados)
});



//MOSTRAR EL MAS VIEJO Y EL MAS JOVEN 

document.querySelector("#viejojoven").addEventListener('click', (evt) => {
    evt.preventDefault();
 
    // Filtrar los personajes que tienen edad válida (> 0)
    let filtrados = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
        filtrados.sort((a, b) => a.personaje.age - b.personaje.age);  
        
           let viejojoven = [filtrados[0], filtrados[filtrados.length - 1]];
     
 
   
    imprimir(viejojoven);
});

//MOSTRAR LOS QUE SON ESTUDIANTES 
document.querySelector("#estudiantes").addEventListener('click',(evt)=>{
    //evitar recarga

    evt.preventDefault()
   
      let res = arr_original.filter(item => 
        item.personaje.occupation && item.personaje.occupation.includes("Student")
    );
    console.log("Estudiantes",res)
    imprimir(res)
})



// mostrar nacidos antes de 1980/02/01
document.querySelector("#nacimiento").addEventListener('click', (evt) => {
    evt.preventDefault();

    const fechaLimite = new Date("1980-02-01");

    let res = arr_original.filter(item => {
        let fechaStr = item.personaje.birthdate; // usamos birthdate
        if(fechaStr){ // solo si existe
            let fechaPersonaje = new Date(fechaStr);
            return !isNaN(fechaPersonaje.getTime()) && fechaPersonaje < fechaLimite;
        }
        return false;
    });

    if(res.length > 0){
        imprimir(res);
    } else {
        ul.innerHTML = "<li>No se encontraron personajes con fecha de nacimiento anterior a 1980-02-01</li>";
    }
});


// buscador por frases
const inputBuscar = document.getElementById("buscarInput");

inputBuscar.addEventListener("input", (evt) => {
    let frase = evt.target.value.toLowerCase().trim();

    if(frase === "") {
        // Si no hay nada escrito, mostramos todo
        imprimir(arr_original);
        return;
    }

    // Filtramos personajes que tengan alguna frase que incluya la búsqueda
    let res = arr_original.filter(item => 
        item.personaje.phrases && item.personaje.phrases.some(p => p.toLowerCase().includes(frase))
    );

    if(res.length > 0){
        imprimir(res);
    } else {
        ul.innerHTML = `<li>No se encontraron personajes que digan: "${frase}"</li>`;
    }
});
/*




mostrar la fecha de nacimiento sea < 1980/02/01
buscador por frases

*/


