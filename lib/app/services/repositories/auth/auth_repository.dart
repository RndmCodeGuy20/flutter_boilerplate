import 'package:flutter_boilerplate/app/services/repositories/auth/auth_error.dart';
import 'package:http/http.dart' as http;

import '../../models/auth/user_model.dart';

abstract class AuthRepository {
  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel?> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthRepositoryImpl implements AuthRepository {
  final String authBaseUrl;

  AuthRepositoryImpl({required this.authBaseUrl});

  @override
  Future<UserModel?> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    // // TODO: implement loginWithEmailAndPassword
    // throw UnimplementedError();

    try {
      final response = await http.post(
        Uri.parse('$authBaseUrl/login'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = response.body;
        return UserModel.fromMap(data as Map<String, dynamic>);
      } else {
        throw AuthError('Login failed');
      }

      throw AuthError('Login failed');
    } catch (e) {
      throw AuthError(e.message.toString());
    }
    return null;
  }

  @override
  Future<void> registerWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
