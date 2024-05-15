import 'package:flutter/material.dart';
import '../models/message.dart';
import '../models/send_message.dart';
import '../services/message_service.dart';

class ChatController extends TextEditingController {
    List<SendMessage> messages = [];
    String username = 'Marvin';
    MessageService service = new MessageService();

  void sendMessage() {
    SendMessage message = new SendMessage(
      content: this.text,
      createdDatetime: DateTime.now(),
      username: username
    );
 
    messages.add(message);
    service.sendMessage(message);

    notifyListeners();
  }

  void receiveMessage(Message message) {
    notifyListeners();
  }
}
