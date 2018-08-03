<!--- Form para traer la data de otro lado--->
<cfset cedula = Form.cedula />
<cfset nombre = Form.nombre />
<cfset clave = Form.clave />
<cfinvoke 
        component="Database" 
        method="consulta" 
        <!--- para la base de datos con respecto a los form de arriba --->
       sql="INSERT INTO usuarios (cedula, nombre, clave) VALUES ('#cedula#','#nombre#','#clave#')" />

<!---manda al de compras porque el registro se completo exitosamente--->
       <cflocation url = "Compras.cfm">