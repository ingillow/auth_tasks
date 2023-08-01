
import 'package:dio/dio.dart';

/// сервис аутентификации пользователя
class AuthService {
  final Dio dio = Dio();
  static const String _baseUrl = 'http://158.160.14.209';

  Future<void> loginUser(String login, String password) async {
    try {
       await dio.post('$_baseUrl/api/v1/auth/login',
          data: {'login': login, 'password': password});
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
