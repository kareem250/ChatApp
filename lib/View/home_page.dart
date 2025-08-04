import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as Types;

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final chatController = InMemoryChatController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(currentUserId: '', resolveUser: (UserID id) async {
          return User(id: id, name: 'John Doe');
        }, 
        chatController: chatController),
    );
  }
}