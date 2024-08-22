window.addEventListener('DOMContentLoaded', (event) => {
    mountDarkMode("Parent Report");

    const darkModeSwitch = document.querySelector(".switch");
    darkModeSwitch.onkeydown = (e) => {
        if(e.code === "Space") {
            console.log("press space")
            toggleDarkMode();
        }
    };
});