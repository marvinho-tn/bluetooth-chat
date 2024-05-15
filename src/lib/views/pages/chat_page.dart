import 'package:flutter/material.dart';
import '../../models/send_message.dart';
import '../../controllers/chat_controller.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatController chatController = ChatController();

  void sendMessage() {
    setState(() {
      chatController.sendMessage();
      chatController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Chat'),
      ),
      body: Column(
        //aqui vai entrar o widget de message
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatController.messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${chatController.messages[index].username}: ${chatController.messages[index].content}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: chatController,
                    decoration: InputDecoration(hintText: 'Digite sua mensagem...'),
                    //preciso fazer com que no ato de clicar enter a mensagem seja enviada
                    onSubmitted: (value) {
                      if (value == '\n') {
                        sendMessage();
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
