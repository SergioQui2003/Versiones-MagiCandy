let arrow = document.querySelectorAll(".arrow");
// Para que cuando de sobre las flechas salga subcategorias
for (var i = 0; i < arrow.length; i++) {
arrow[i].addEventListener("click", (e) => {
let arrowParent = e.target.parentElement.parentElement; // seleccionar el elemento principal de la flecha EN EL MENU
arrowParent.classList.toggle("showMenu"); // alternar la clase "showMenu" en el elemento principal EN EL MENU
});
}
let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".bx-menu");
console.log(sidebarBtn);

// Agregar un evento de clic al botón de la barra lateral
sidebarBtn.addEventListener("click", () => {
sidebar.classList.toggle("close"); // cambia la clase "close o cerrar" en la barra lateral
});