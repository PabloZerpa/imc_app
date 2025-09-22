import 'package:flutter/material.dart';
import 'package:imc_app/core/colors.dart';
import 'package:imc_app/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender; // Por defecto es "null" si no se inicializa

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Hombre";
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "Hombre" ? AppColors.bgComponentSelected : AppColors.bgComponent,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/male.png", height: 100),
                    Text("Hombre".toUpperCase(), style: TextStyles.bodyText)
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "Mujer" ? AppColors.bgComponentSelected : AppColors.bgComponent,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/female.png", height: 100),
                    Text("Mujer".toUpperCase(), style: TextStyles.bodyText)
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}