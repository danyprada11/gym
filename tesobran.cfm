<cfinclude template = "lay.cfm"><!-- incluye el archivo donde esta la estructura base inicial, parte superios-->
    
    <!-- INICIO Verdadero contenido de la pagina -->
        <cfoutput>
            <h1>Te quedan: #cantidadDeTiquetesDisponibles#</h1>
        </cfoutput>
        <div class="text-center">
            <p>                    <!--fa es el tamano -->
                <i class="fas fa-smile-beam fa-6x"></i>
            </p>
            <h3>Ve al GYM!</h3>
            <a href="IndexGym.cfm">Inicio</a>
        </div>
    <!-- FINAL Verdadero contenido de la pagina -->

<cfinclude template = "out.cfm"><!-- Extructura base, inferior -->