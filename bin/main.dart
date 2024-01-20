import 'dart:io';

import 'package:dart_server_templates/dart_server_templates.dart' as dart_server_templates;

void main(List<String> arguments)async {

    var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    8080, // You can specify any port here
  );
  print('Listening on http://localhost:${server.port}');
 
  await for (var request in server) {
    handleRequest(request);
  }

 
}


void handleRequest(HttpRequest request) {
  // Handle different HTTP requests here
  request.response
    ..write('Hello world: ${dart_server_templates.calculate()}!')
    ..close();
}