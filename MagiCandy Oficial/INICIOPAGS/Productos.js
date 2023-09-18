// Seleccionar elementos HTML por su ID
let mostrador = document.getElementById("mostrador");
let seleccion = document.getElementById("seleccion");
let imgSeleccionada = document.getElementById("img");
let modeloSeleccionado = document.getElementById("modelo");
let descripSeleccionada = document.getElementById("descripcion");
let precioSeleccionado = document.getElementById("precio");

// Función para cargar los detalles de un elemento seleccionado
function cargar(item){
    // Restablecer bordes de elementos
    quitarBordes();

    // Ajustar estilos de mostrador y selección
    counter.style.width = "60%";
    seleccion.style.width = "40%";
    seleccion.style.opacity = "1";

    // Establecer borde rojo en el elemento seleccionado
    item.style.border = "2px solid red";

    // Actualizar imagen mostrada con la imagen del elemento seleccionado
    imgSeleccionada.src = item.getElementsByTagName("img")[0].src;

    // Actualizar modelo mostrado con el contenido del primer elemento <p> dentro del elemento seleccionado
    modeloSeleccionado.innerHTML = item.getElementsByTagName("p")[0].innerHTML;

    // Establecer texto genérico para descripción
    descripSeleccionada.innerHTML = "Descripción del modelo";

    // Actualizar precio mostrado con el contenido del primer elemento <span> dentro del elemento seleccionado
    precioSeleccionado.innerHTML = item.getElementsByTagName("span")[0].innerHTML;
}

// Función para cerrar la selección y restaurar los estilos originales
function cerrar(){
    // Restablecer anchos y opacidad de mostrador y selección
    counter.style.width = "100%";
    seleccion.style.width = "0%";
    seleccion.style.opacity = "0";

    // Restablecer bordes de elementos
    quitarBordes();
}

// Función para quitar los bordes de todos los elementos con la clase "item"
function quitarBordes(){
    var items = document.getElementsByClassName("item");
    for(i = 0; i < items.length; i++){
        items[i].style.border = "none";
    }
}
