<!--- Form para traer la data de otro lado--->
<cfset cedula = Form.cedula />
<cfset nombre = Form.nombre />
<cfset clave = Form.clave />
<cfset codigo = Form.codigo />

<cfinvoke 
        component="Database" 
        method="consulta" 
        <!--- para la base de datos con respecto a los form de arriba --->
       sql="INSERT INTO usuarios (cedula, nombre, clave) VALUES ('#cedula#','#nombre#','#clave#')" />

<!---manda al de compras porque el registro se completo exitosamente--->
    <cfif !codigo>
        <cflocation url = "Compras.cfm">
    <cfelse>
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="SELECT LAST_INSERT_ID() as id" 
            returnvariable="usuario"
        />

        <!-- Crea una compra y crea un tiquete para el usuario que referido -->
        
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="INSERT INTO compras (usuarios_id, total, cantidad) VALUES ('#usuario[1].id#','0','1')" 
            returnvariable="compra"
        />

        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="SELECT LAST_INSERT_ID() as id" 
            returnvariable="compra"
        />

        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="INSERT INTO tiquetes (usuarios_id, compras_id, estado) VALUES ('#usuario[1].id#','#compra[1].id#','activo')" 
        />
        <!-- Crea una compra y crea dos tiquetes para el usuario que refirio -->
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="INSERT INTO compras (usuarios_id, total, cantidad) VALUES ('#codigo#','0','2')" 
            returnvariable="compra"
        />
        
        <cfinvoke 
            component="Database" 
            method="consulta" 
            sql="SELECT LAST_INSERT_ID() as id" 
            returnvariable="compra"
        /> 

        <cfloop index="i" from = "1" to = "2">
            <cfinvoke 
                component="Database" 
                method="consulta" 
                sql="INSERT INTO tiquetes (usuarios_id, compras_id, estado) VALUES ('#codigo#','#compra[1].id#','activo')" 
            />
        </cfloop>

        <cflocation url = "IndexGYM.cfm">
    </cfif>