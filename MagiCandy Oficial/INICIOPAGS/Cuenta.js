// Seleccionar elementos HTML por su ID
const signUpButton = document.getElementById("signUp");
const signInButton = document.getElementById("signIn"); // Botón para pasar al formulario de inicio de sesión
const container = document.getElementById("container");
const init = document.getElementById("init"); // Botón de inicio de sesión

// Agregar un evento de clic al botón "signUp" para activar el panel derecho del contenedor
signUpButton.addEventListener("click", () => {
    container.classList.add("right-panel-active");
});

// Agregar un evento de clic al botón "signIn" para desactivar el panel derecho del contenedor
signInButton.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
});

// Agregar un evento de clic al botón "init" para realizar la verificación del SAP y contraseña
init.addEventListener("click", () => {
    try {
        // Obtener el valor del campo de entrada "lsap"
        const sap = document.getElementById("lsap").value;
        console.log(sap);
        
        // Realizar la verificación del SAP
        verificarSap(sap);
        
        // Realizar la verificación de la contraseña
        verificarPassword();
    } catch (e) {
        console.error(e.message);
    }
});

// Función para verificar el SAP ingresado
function verificarSap(sap) {
    console.log(sap.length);
    
    // Verificar si todos los datos están completos
    if (sap.length === 0) {
        throw new Error("Todos los datos deben estar completos");
    }
    
    // Verificar si el SAPID solo contiene números
    if (isNaN(sap)) {
        throw new Error("El SAPID solo debe contener números");
    }
    
    // Verificar si el SAPID contiene exactamente 8 números
    if (sap.length !== 8) {
        throw new Error("El SAPID debe contener exactamente 8 números");
    }
}

// Función para verificar la contraseña (sin implementación actual)
function verificarPassword() {
    return null;
}