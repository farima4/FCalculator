import 'package:flutter/material.dart';

import 'package:calc/widgets/calculator_button.dart';

final List<String> buttons = [
  '7',
  '8',
  '9',
  '/',
  '4',
  '5',
  '6',
  '*',
  '1',
  '2',
  '3',
  '-',
  'C',
  '0',
  '=',
  '+',
];

class CalculatorButtonGrid extends StatelessWidget {
  const CalculatorButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.0,
      ),
      itemCount: 16,
      itemBuilder: (context, index) {
        return CalculatorButton(text: buttons[index], onPressed: () {});
      },
    );
  }
}
