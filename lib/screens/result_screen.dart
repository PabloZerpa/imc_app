import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final int weight;
  final double height;

  const ResultScreen({super.key, required this.height, required this.weight});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}