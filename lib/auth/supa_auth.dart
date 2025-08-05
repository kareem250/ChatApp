import 'package:cars_chat/auth/client_singleton.dart';
import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupaAuth {
  static Future<AuthResponse> SignUp({
    required String Name,
    required String Email,
    required String Password,
  }) async {
    SupabaseClient myclient = MyClient().Client;
    AuthResponse authResponse = await myclient.auth.signUp(
      email: Email,
      password: Password,
      data: {'name': Name},
    );
    return authResponse;
  }
}
