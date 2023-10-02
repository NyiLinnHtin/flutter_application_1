import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int diceNumber = 1;

  void rollDice() {
    diceNumber = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/dices/dice-$diceNumber.png",
          width: 200,
        ),
        SizedBox(
          height: 45,
          child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.pink,
            ),
            child: const Text("Roll!"),
          ),
        ),
      ],
    );
  }
}
