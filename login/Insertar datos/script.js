document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("user-form").addEventListener("submit", function(event) {
        event.preventDefault(); // Evita que el formulario se envíe normalmente

        // Obtener los datos del formulario
        var formData = new FormData(this);

        // Aquí puedes enviar los datos a través de AJAX o realizar cualquier acción que necesites con los datos del formulario
        // Por ejemplo, podrías enviar los datos a un archivo PHP para procesarlos en el servidor
        // Aquí mostraré los datos en la consola como ejemplo
        for (var pair of formData.entries()) {
            console.log(pair[0] + ': ' + pair[1]);
        }
    });
});
