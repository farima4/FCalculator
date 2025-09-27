import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CalculatorButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(fit: BoxFit.contain, child: Text(text)),
      ),
    );
  }
}
