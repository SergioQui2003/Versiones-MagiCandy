const signUpButton = document.getElementById("signUp");
const signInButton = document.getElementById("signIn"); // boton para pasar al formualrio de inicio sesion
const container = document.getElementById("container");
const init = document.getElementById("init"); // boton de inicio de sesion

signUpButton.addEventListener("click", () => {
    container.classList.add("right-panel-active");
});

signInButton.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
});

init.addEventListener("click", () => {
    try {
    const sap = document.getElementById("lsap").value;
    console.log(sap);
    verificarSap(sap);
    verificarPassword();
} catch (e) {
    console.error(e.message);
}
});

function verificarSap(sap) {
console.log(sap.length);
    if (sap.length === 0) {
    throw new Error("Todos los datos deben estar completos");
}
    if (isNaN(sap)) {
    throw new Error("El SAPID solo tiene numeros");
}
    if (sap.length !== 8) {
    throw new Error("El SAPID contiene solo 8 numeros");
}
}
function verificarPassword() {
    return null;
}

