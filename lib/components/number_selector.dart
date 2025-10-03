import 'package:flutter/material.dart';
import 'package:imc_app/core/colors.dart';
import 'package:imc_app/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({super.key, required this.title, required this.value, 
  required this.onIncrement, required this.onDecrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgComponent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(widget.title, style: TextStyles.bodyText),
            Text(widget.value.toString(), style: TextStyles.bodyText,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    widget.onDecrement();
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: (){
                    widget.onIncrement();
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}