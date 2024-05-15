import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  MeuWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
