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
        
        <cfif hayTiquetes >
            <cfinvoke 
                component="Database" 
                method="consulta" 
                sql="UPDATE tiquetes SET estado='inactivo' WHERE id='#tiquetes[1].id#'" 
                returnvariable="tiquetes"
            />
            <cflocation url = "tesobran.cfm">
        <cfelse>
            <cflocation url = "nohay.cfm">
        </cfif>
    <cfelse>
        tu estas mal broder
    </cfif>
    
</cfloop>