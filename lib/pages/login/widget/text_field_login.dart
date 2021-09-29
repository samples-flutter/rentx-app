import 'package:flutter/material.dart';
import 'package:rentx/styles/app_colors.dart';

enum InputType { email, password }

class TextFieldLogin extends StatefulWidget {
  final String hint;
  final InputType inputType;
  final Function(String) onChange;

  const TextFieldLogin(
      {Key? key,
      required this.hint,
      required this.inputType,
      required this.onChange})
      : super(key: key);

  @override
  _TextFieldLoginState createState() => _TextFieldLoginState();
}

class _TextFieldLoginState extends State<TextFieldLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.87,
      child: Row(
        children: [
          Material(
            color: AppColors.background,
            child: Container(
              width: 55,
              height: 56,
              child: Icon(widget.inputType == InputType.email
                  ? Icons.email_outlined
                  : Icons.lock_outlined),
            ),
          ),
          SizedBox(width: 3),
          Expanded(
            child: Material(
              color: AppColors.background,
              child: Container(
                height: 56,
                child: TextField(
                  obscureText: widget.inputType == InputType.password,
                  keyboardType: widget.inputType == InputType.email
                      ? TextInputType.emailAddress
                      : TextInputType.visiblePassword,
                  onChanged: widget.onChange,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 23, top: 20),
                      hintText: widget.hint,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      suffixIcon: Icon(widget.inputType == InputType.password
                          ? Icons.visibility_outlined
                          : null)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
