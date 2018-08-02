<cfinclude template = "lay.cfm"><!-- incluye el archivo donde esta la estructura base inicial, parte superios-->
    <cfoutput>
        <h3>#cantidad#x Tiquetes</h3>
        <h1 class="text-success">Total: $#NumberFormat(total)#</h1>
    </cfoutput>
    <!-- INICIO Verdadero contenido de la pagina -->
        <div class="text-center">
            <p>
                  <!-- carita Feliz -->
                <i class="fas fa-smile-beam fa-6x"></i>
            </p>
            <h3>Gracias por tu compra</h3>
            <a href="IndexGym.cfm">Inicio</a>
        </div>
    <!-- FINAL Verdadero contenido de la pagina -->

<cfinclude template = "out.cfm"><!-- Extructura base, inferior -->