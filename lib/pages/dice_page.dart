import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {

   const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  // Variables to hold the dice numbers
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
        title: Text(
          'Dice Game',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              // left  dice

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),

              // right  dice
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),

            ],
          ),
            SizedBox(height: 50),

          ElevatedButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6)+ 1;
              });
            },
            child: Text(
              'Play',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
