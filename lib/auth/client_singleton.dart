import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyClient {
  static final MyClient _myClient = MyClient._instance();
  factory MyClient() => _myClient;
  MyClient._instance();
  final SupabaseClient Client = Supabase.instance.client;
}
