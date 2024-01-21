class Endpoint1 {
  // add enpoint methods here which return json data as Hello text
  Future<String> hello(String query) async {
    return 'Hello $query';
  }
}
