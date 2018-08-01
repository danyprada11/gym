<cfinclude template = "lay.cfm">
<a href="IndexGym.cfm" class="btn btn-secondary btn-lg"> Inicio </a>
<div class="text-down">

<div class="my-5 text-center">
          <!--el text-primary hace referencia a azul-->
        <h1 class="text-primary">Compra Aqui Tus Tickets</h1>
        <i  style="color:#fb9900;" class="fab fa-amazon-pay fa-3x"></i>
        <i  style="color:#03488e;" class="fab fa-cc-paypal fa-3x"></i>
        
        <i  style="color:#333333;" class="fab fa-apple-pay fa-3x"></i>
        <i  style="color:#0a6fd2;" class="fab fa-cc-amex fa-3x"></i>
        <i  style="color:#fba919;" class="fab fa-cc-visa fa-3x"></i>
       </div>
</div>


<cfform action = "procesarcompra.cfm" method = "post">
    <div class="form-group">
        <cfinput name = "cedula" class="form-control" type = "Text" placeholder="Cedula">
    </div>
    <div class="form-group">
        <cfselect name = "cantidad" class="form-control">
            <cfloop index = "i" from = "1" to = "50">
                <cfoutput>
                    <option value="#i#">#i#</option> 
                </cfoutput>
            </cfloop>
        </cfselect>
        
    </div>
    <!--este boton es distinto, ya que sube la info envez de redirigir-->
    <cfinput name = "sub" class="btn btn-primary btn-lg" type = "Submit" value="Comprar">
</cfform>

<cfinclude template = "out.cfm">
