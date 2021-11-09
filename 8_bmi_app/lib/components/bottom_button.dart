import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: kBottomTextStyle,
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: kDefaultMargin),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
