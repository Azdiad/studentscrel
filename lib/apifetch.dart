import 'package:http/http.dart' as http;

Future<http.Response> fetching() async {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
}
