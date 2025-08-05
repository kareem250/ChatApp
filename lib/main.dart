import 'package:cars_chat/View/chat_page.dart';
import 'package:cars_chat/View/home_page.dart';
import 'package:cars_chat/View/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

bool islogin = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://sdtkiyvcrywsehdqdasw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNkdGtpeXZjcnl3c2VoZHFkYXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQ3MjU3MzEsImV4cCI6MjA2MDMwMTczMX0.Pg4SsFu77wRzDFIbwrnKqU0aYyu0JQ4rBl9iZqFT-0g',
  );
  islogin = Supabase.instance.client.auth.currentSession != null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (islogin == null) ? SigninPage() : HomePage(),

      //fix a bug
    );
  }
}
