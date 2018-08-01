<cfinclude template = "lay.cfm">
        <a href="IndexGym.cfm" class="btn btn-secondary btn-lg"> Inicio </a>

        <h1 class="mt-5">Solo los capos se registran</h1>

        <cfform action = "registro.cfm" method = "post">
                <div class="form-group">
                        <cfinput name = "nombre" class="form-control" type = "Text" placeholder="Tu nombre aca m4lp4r10">
                </div>
                <div class="form-group">
                        <cfinput name = "cedula" class="form-control" type = "Text" placeholder="Tu cedula aca piro">
                </div>
                <div class="form-group">
                        <cfinput name = "clave"  class="form-control" type = "Password" placeholder="Password">
                </div> 
                <div class="form-group">
                        <cfinput name = "codigo"  class="form-control" type = "Text" placeholder="Codigo de la estafa piramidal">
                </div> 
                <cfinput name = "sub" class="btn btn-success btn-lg" type = "Submit" value="Registrar"> 
        </cfform>


<cfinclude template = "out.cfm">