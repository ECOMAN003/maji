import 'package:flutter/material.dart';
import 'package:maji/theme/app_theme.dart' as AppTheme;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Maji', style: TextStyle(color: AppTheme.AppColors.black,),),
        backgroundColor: AppTheme.AppColors.white,
      ),
    );
  }
}