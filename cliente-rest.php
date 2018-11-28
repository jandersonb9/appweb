<?php
/*
Script para consumir servicios REST
Para este caso podemos usar dos metodos de consultar que provee php
1. file_get_contents: permite leeer una ruta y extraer la informacion pero no es muy seguro porque debe enviar de manera publica las credenciales en caso que las necesite
2. CURL este metodo es uno de transportes de datos mas usados. Permite manejar conexiones a servidores seguros, pasar credenciales, pasar datos en xml, json en txt , en binario entre otros y permite abrir una conexion entre el script y el servidor de peticion mucho mas seguro y el servidor que recibe la peticion le genera mas confianza una peticion curl que un file_Get_contents
*/
// 1. crear variable con la ruta
$ruta="http://localhost:8089/appweb/index.php/rest/listar_productos_get/";
// 2.  iniciar el servicio
$curl=curl_init($ruta);
// 3. pasar los pamametros de encabezado, metodo de transferencia, tiempo de conexion y tipo de envio usando las opciones curl_setopt
curl_setopt($curl,CURLOPT_HTTPHEADER,array("Content-type: Application/json;chartset=\"utf-8\""));
curl_setopt($curl,CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
curl_setopt($curl,CURLOPT_TIMEOUT, 10);
// 4. ejecutar tres procesos que posee el curl
// curl_exec lo que hace es ejecutar el curl con los parametros
$resultado=curl_exec($curl);
// si el curl generar error que se puedan guardar para mostrar
$error=curl_error($curl);
// como son peticiones a los navegadores normalmente se recuperan los tipos de errores que arrojan estos:
// 401, 500, 103, 200, siendo 200 el OK o servicio disponible
$status=curl_getinfo($curl,CURLINFO_HTTP_CODE);
if ($status<>"200") { // ocurre un error
	echo "Se ha presentado un problema con el servicio :".$status." Error: ".$error;
	exit();
} else {
	// aca se puede recuperar la variable $resultado
	// la forma de mostrar los datos dependera en como el servicio responde
	// para este caso sabemos que esta enviando json entonces lo vamos a decodificar y usar una variable para poder mostrar la informacion
	$data=json_decode($resultado,true); // true quiere decir que los datos se almacen a una variable
	if (sizeof($data)>0) { 
		echo "<table width=100% border=1>";
		echo "<thead>";
			echo "<tr>";
				echo "<th>REF</th>";
				echo "<th>NOMBRE</th>";
				echo "<th>PRECIO</th>";
			echo "</tr>";
		echo "</thead>";
		echo "<tbody>";
		foreach ($data as $fila) {
			echo "<tr>";
				echo "<td>".$fila['ref']."</td>";
				echo "<td>".$fila['nombre']."</td>";
				echo "<td>COP ".number_format($fila['precio'],0)."</td>";
			echo "</tr>";
		}
		echo "</tbody>";
		echo "</table>";
	} else {
		echo "No hay datos que mostrar de productos";
	}

}
// 5. Cerrar el uso de curl
curl_close($curl);





