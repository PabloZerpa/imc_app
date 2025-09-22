import 'package:flutter/material.dart';
import 'package:imc_app/core/colors.dart';
import 'package:imc_app/core/text_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary, 
          title: const Text("IMC Calculator"),
          foregroundColor: Colors.white),
        backgroundColor: AppColors.bg,
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
