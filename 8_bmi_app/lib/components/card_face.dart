import 'package:flutter/material.dart';
import '../constants.dart';

class CardFace extends StatelessWidget {
  const CardFace({Key? key, required this.cardIcon, required this.cardText})
      : super(key: key);

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
