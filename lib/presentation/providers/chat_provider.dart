import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/Message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: "Hola, como estas?", fromWho: FromWho.me),
    Message(text: "Ya, regresaste del trabajo?", fromWho: FromWho.me),
  ];

  Future<void> addMessage(String text) async {
    messages.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
  }

}