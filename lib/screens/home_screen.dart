import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector()
      ],
    );
  }
}