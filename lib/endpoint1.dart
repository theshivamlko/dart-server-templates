class Endpoint1 {
  // add enpoint methods here which return json data as Hello text
  Future<String> hello(String text,String color) async {
    return '<html><h1 style="color:#$color">Hello $text </h1></html>';
  }
}
