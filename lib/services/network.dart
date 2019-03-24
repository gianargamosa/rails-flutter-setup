import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
	static final String production = 'https://gianargamosa.herokuapp.com';
	static final String development = 'http://127.0.0.1:3001';

  static dynamic authenticate(String email, String password) async {
    try {
      final response = await http.post(
        'http://127.0.0.1:3001/api/v1/auth/sign_in',
        body: {
          'email': email,
          'password': password
        }
      );
      final responseJSON = json.decode(response.body);
      return responseJSON;
    } catch (exception) {
      if (exception.toString().contains('SocketException')) {
        return 'Network Error';
      } else {
        return null;
      }
    }
  }

  static dynamic register(String name, String email, String password, String passwordComfirmation) async {
    try {
      final response = await http.post(
        'http://127.0.0.1:3001/api/v1/registrations',
        body: {
          'email': email,
          'password': password,
          'password_confirmation': passwordComfirmation,
          'name':name
        }
      );
      final responseJSON = json.decode(response.body);
      return responseJSON;
    } catch (exception) {
      if (exception.toString().contains('SocketException')) {
        return 'Network Error';
      } else {
        return null;
      }
    }
  }
}
