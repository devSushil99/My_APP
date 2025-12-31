import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool _showPassword = false;
  bool get showPassword => _showPassword;
  void togglePasswordVisibility() {
    _showPassword = !_showPassword;
    notifyListeners();
  }

  String _loginButtonText = "Login";
  String get loginButtonText => _loginButtonText;
  void loginTextChange() {
    _loginButtonText = "Logging In...";
    notifyListeners();
  }

  void resetLoginButtonText() {
    _loginButtonText = "Login";
    notifyListeners();
  }
}
