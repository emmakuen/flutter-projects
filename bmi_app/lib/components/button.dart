import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({Key? key, required this.icon, required this.onClick})
      : super(key: key);
  final IconData icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: kButtonColor,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
