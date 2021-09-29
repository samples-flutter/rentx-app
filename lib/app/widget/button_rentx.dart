import 'package:flutter/material.dart';

class ButtonRentx extends StatelessWidget {
  final String label;
  final Color color;
  final Function() action;

  const ButtonRentx(
      {Key? key,
      required this.label,
      required this.color,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: action,
        child: Text(label),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
      ),
    );
  }
}
