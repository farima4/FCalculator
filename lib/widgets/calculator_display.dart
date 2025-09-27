import 'package:flutter/material.dart';

class CalculatorDisplay extends StatefulWidget {
  const CalculatorDisplay({Key? key}) : super(key: key);

  @override
  _CalculatorDisplayState createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {
  String displayText = "demo";
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.95,
      child: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
        ),

        padding: EdgeInsets.all(4),

        child: FittedBox(
          fit: BoxFit.contain,
          alignment: AlignmentGeometry.bottomRight,
          child: Text(displayText, style: TextStyle()),
        ),
      ),
    );
  }
}
