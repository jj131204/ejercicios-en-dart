
import 'dart:io';
import 'package:alfred/alfred.dart';


void main() async {
  final app = Alfred();


  app.get('/', (req, res) {
    res.headers.contentType = ContentType.html;
    return '<html><body><p style="color:red;">Hola Mundo</p></body></html>';
  });

  app.get('/test', (req, res) => 'Test hola mundo');

  app.get('/html1', (req, res) {
    res.headers.contentType = ContentType.html;
    return File('views/index.html');
  });


  await app.listen(); //Listening on port 3000
}