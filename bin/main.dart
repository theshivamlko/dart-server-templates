import 'dart:convert';
import 'dart:io';

import 'package:dart_server_templates/dart_server_templates.dart'
    as dart_server_templates;
import 'package:dart_server_templates/endpoint1.dart';

void main(List<String> arguments) async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    8080, // You can specify any port here
  );
  print('Listening on http://localhost:${server.port}');

  await for (var request in server) {
    String query = request.uri.queryParameters["query"] ?? "N/A";
    String color = request.uri.queryParameters["color"] ?? "N/A";
    request.response
    ..headers.contentType = ContentType.html
      ..write(await Endpoint1().hello(query, color))
      ..close();

    //  handleRequest(request);
  }
}

void handleRequest(HttpRequest request) {
  // Handle different HTTP requests here
  request.response
    ..headers.contentType = ContentType.html
    ..write('Hello world: ${dart_server_templates.calculate(5,10)}!')
    ..close();
}
