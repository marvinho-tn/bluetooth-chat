import 'package:flutter/material.dart';

class UserController extends ChangeNotifier {

  void createUser(User user) {
    notifyListeners();
  }

  void editUser(User user) {
    notifyListeners();
  }
}
