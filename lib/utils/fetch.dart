part of utils;

final http.Client client = new http.Client();

Future fetch(String uri) async {
  return await client.get(uri);
}