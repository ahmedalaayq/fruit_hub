import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String loginView='/loginView';

  @override
  Widget build(BuildContext context) {
    return const PopScope(
        canPop: false,
        child: Placeholder());
  }
}
