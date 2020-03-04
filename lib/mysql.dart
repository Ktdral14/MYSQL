
//Revisar el archivo pubspec.yaml para ver como se añadió la librería
import 'package:http/http.dart' as http;

const String url = 'http://192.168.0.18/prueba/insert.php';


void insertarRegistro(List<String> inputs) async {

  //Solicitud http mediante post
  var response = await http.post(url, 
  body: {
    'nombre'        : inputs[0],
    'carrera'       : inputs[1],
    'edad'          : inputs[2],
    'calificacion'  : inputs[3]
  });

  print(response.body);
}
