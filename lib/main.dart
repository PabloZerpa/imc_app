import 'package:flutter/material.dart';
import 'package:imc_app/screens/home_screen.dart';
import "core/colors.dart";

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
        body: Home(),
      ),
    );
  }
}
