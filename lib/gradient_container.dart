import 'package:flutter/material.dart';
import 'dice_roll.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key, required this.color});

  final List<Color> color;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: color, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}

// class StyledText extends StatelessWidget {
//   const StyledText(this.text, this.fontColor, this.fontSize, {super.key});
//   final String text;
//   final Color fontColor;
//   final double fontSize;
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(color: fontColor, fontSize: fontSize),
//     );
//   }
// }
