import 'package:flutter/material.dart';
import 'package:flutter_charts/core/values/app_colors.dart';
import 'package:flutter_charts/features/auth/presentation/login_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const String authScreenRoute = '/authScreenRoute';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: LoginBody(),
    );
  }
}
