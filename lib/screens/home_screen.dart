import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';
import 'package:imc_app/components/height_selector.dart';
import 'package:imc_app/components/number_selector.dart';
import 'package:imc_app/core/colors.dart';
import 'package:imc_app/core/text_styles.dart';
import 'package:imc_app/screens/result_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedAge = 20;
  int selectedWeight = 60;
  double selectedHeight = 175;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(value: selectedHeight, onSelectedHeight: (newHeight) => {
          setState(() {
            selectedHeight = newHeight;
          }),
        },),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(child: NumberSelector(title: "Edad", value: selectedAge,
              onDecrement: () => { 
                setState(() {
                  if(selectedAge >= 1){
                    selectedAge--;
                  }
                })
              }, onIncrement: () => {
                setState(() {
                  selectedAge++;
                })
              },)),
              SizedBox(width: 16,),
              Expanded(child: NumberSelector(title: "Peso", value: selectedWeight,
              onDecrement: () => {
                setState(() {
                  if(selectedWeight >= 1){
                    selectedWeight--;
                  }
                })
              }, onIncrement: () => {
                setState(() {
                  selectedWeight++;
                })
              },)),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  height: selectedHeight,
                                  weight: selectedWeight,
                                )));
                  },
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.primary)),
                  child: Text("Calcular", style: TextStyles.bodyText))),
        )
      ],
    );
  }
}