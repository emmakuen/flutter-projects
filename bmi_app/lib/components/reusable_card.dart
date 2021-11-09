import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key, required this.colour, this.cardChild, this.onPress})
      : super(key: key);
  final Color colour;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(kDefaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
