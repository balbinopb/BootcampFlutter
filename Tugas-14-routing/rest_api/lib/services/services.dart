import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rest_api/model/model.dart';

class ApiService {
  final String apiUrl = "https://reqres.in/api/users";

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body)['data'];
      List<User> users = body.map((dynamic item) => User.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
