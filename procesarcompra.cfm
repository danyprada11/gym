<cfset cedula = Form.cedula />
<cfset cantidad = Form.cantidad />

<cfinvoke 
        component="Database" 
        method="consulta" 
        sql="SELECT * FROM usuarios WHERE cedula='#cedula#'" 
        returnvariable="usuarios"
    />

<cfset usuario_id = usuarios[1].id>
<cfset precio = 9000>
<cfset total = "#cantidad * precio#">

<cfinvoke 
        component="Database" 
        method="consulta" 
        sql="INSERT INTO compras (usuarios_id, total, cantidad) VALUES ('#usuario_id#','#total#','#cantidad#')" 
        returnvariable="compra"
/>

    <cfinvoke 
        component="Database" 
        method="consulta" 
        sql="SELECT LAST_INSERT_ID() as id" 
        returnvariable="compra"
    />

    <cfset compra_id = compra[1].id>

    <cfloop index="i" from = "1" to = "#cantidad#">
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="INSERT INTO tiquetes (usuarios_id, compras_id, estado) VALUES ('#usuario_id#','#compra_id#','activo')" 
            returnvariable="compra"
        />
    </cfloop>


    <cfinclude template = "gracias.cfm">

