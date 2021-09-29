import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/styles/app_colors.dart';

class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('images/ic_car.svg'),
            Text(
              '02',
              style: TextStyle(
                  color: AppColors.graySecond,
                  fontSize: 55,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
        SizedBox(height: 50),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            "Depois, escolha o carro",
            style: TextStyle(
                color: AppColors.grayTitle,
                fontSize: 40,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 24),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(
            "Vários modelos para você dirigir seguro, com conforto e segurança.",
            style: TextStyle(color: AppColors.grayText, height: 1.5),
          ),
        )
      ],
    );
  }
}
