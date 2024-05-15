import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Tela'),
      ),
      body: Center(
        child: Text(
          'Olá, Mundo!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}