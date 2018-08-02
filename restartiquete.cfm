<!---este archivo toma decisiones de restar el tiquete y dejar 
entrar al aplicativo--->
<cfset cedula = Form.cedula />
<cfset clave = Form.clave />

<cfinvoke 
        component="Database" 
        method="consulta" 
        sql="SELECT * FROM usuarios WHERE cedula='#cedula#'" 
        returnvariable="usuarios"
    />
<cfloop array = "#usuarios#" index = "cliente">
    
    <!---aca se verifica las contrasenas y usuario --->
    <cfif cliente.clave==clave>
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="SELECT * FROM tiquetes WHERE usuarios_id='#cliente.id#' AND estado='activo' " 
            returnvariable="tiquetes"
        />

        <cfset hayTiquetes = !arrayIsEmpty(tiquetes)>
        <!--
            -1 para que se vea la cantidad que quedan, ya que si contamos el arreglo no 
            tomamos en consideracion que desactivamos uno
        -->
        <cfset cantidadDeTiquetesDisponibles = ArrayLen(tiquetes)-1>

        <cfif hayTiquetes >
            <!--resta los tiquetes en la base de datos-->
            <cfinvoke 
                component="Database" 
                method="consulta" 
                sql="UPDATE tiquetes SET estado='inactivo' WHERE id='#tiquetes[1].id#'" 
                returnvariable="tiquetes"
            />
            
            <!--resta los tiquetes visualmente-->
            
            
            <cfinclude template = "tesobran.cfm">
        <cfelse>
            <cfinclude template = "nohay.cfm">
        </cfif>
    <cfelse>
        tu estas mal broder
    </cfif>
    
</cfloop>