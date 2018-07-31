
component {

    public any function consulta(sql) {
        nombreBaseDeDatos = 'gym'; /*aca se cambio por el nombre de la base de datos*/
        puertoDeLaBaseDeDatos = '8889'; //por dafault el pueto de conexion a MySQL es 3306//
        
        ds = {
            class: 'org.gjt.mm.mysql.Driver', 
            connectionString: 'jdbc:mysql://localhost:' & puertoDeLaBaseDeDatos & '/' & nombreBaseDeDatos & '?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true', 
            username: 'root',
            password: 'root'
        };
            
        return queryExecute(sql, {}, { datasource : ds, returntype:"array" });
    }
}


