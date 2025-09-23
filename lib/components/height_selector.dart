import 'package:flutter/material.dart';
import 'package:imc_app/core/colors.dart';
import 'package:imc_app/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 175; // Por defecto es "null" si no se inicializa

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bgComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Text("ALTURA"),
            Text("${height.toStringAsFixed(0)} cm", style: TextStyles.bodyText,),
            Slider(
              value: height, 
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              }, 
              min: 150, 
              max: 210,
              divisions: 60,
              activeColor: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}