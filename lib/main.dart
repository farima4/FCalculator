import 'package:flutter/material.dart';

import 'package:calc/widgets/calculator_button_grid.dart';
import 'package:calc/widgets/calculator_display.dart';

const String APP_NAME = "FCalculator";
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            APP_NAME,
            style: TextStyle(color: Theme.of(context).colorScheme.surface),
          ),
          centerTitle: true,
          //backgroundColor: Theme.of(context).colorScheme.primary,
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 5.0,
          children: [
            Expanded(flex: 5, child: CalculatorDisplay()),
            SizedBox(height: 10),
            Expanded(flex: 9, child: CalculatorButtonGrid()),
          ],
        ),
      ),
    );
  }
}
