import 'package:serverpod/serverpod.dart';

class Endpoint1 extends Endpoint {
  // add enpoint methods here which return json data as Hello text
  Future<String> hello() async {
    print("Hello print");
    return 'Hello';
  }
}
