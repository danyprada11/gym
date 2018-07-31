<cfinclude template = "lay.cfm"><!-- incluye el archivo donde esta la estructura base inicial, parte superios-->
    
    <!-- INICIO Verdadero contenido de la pagina -->
        <a href="Compras.cfm" class="btn btn-primary btn-lg"> Comprar </a>
        <a href="RegistroUsuario.cfm" class="btn btn-success btn-lg"> Registro </a>


        <cfform class="mt-2" action = "restartiquete.cfm" method = "post">
            <div class="form-group">
                    <cfinput name = "cedula" class="form-control" type = "Text" placeholder="Tu cedula aca piro">
            </div>
            <div class="form-group">
                    <cfinput name = "clave"  class="form-control" type = "Password" placeholder="tu contraseña super segura" >
            </div>
            <cfinput name = "enviar" type = "Submit" value="Consumir" class="btn btn-primary" >
        </cfform>
    <!-- FINAL Verdadero contenido de la pagina -->

<cfinclude template = "out.cfm"><!-- Extructura base, inferior -->