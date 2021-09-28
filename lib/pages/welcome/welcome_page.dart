import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/styles/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('images/union.svg'),
              Column(
                children: [
                  Text(
                    'Seja \n Bem-vindo',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'O que você deseja fazer ?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonCustom(context, "Login", AppColors.primary, () {}),
                      buttonCustom(
                          context, "Cadastrar", AppColors.black100, () {}),
                    ],
                  ),
                  SizedBox(height: 43),
                  Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonCustom(context, String label, Color color, Function() action) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
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
