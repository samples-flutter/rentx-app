import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/styles/app_colors.dart';

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 10, end: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('images/icon_calendar.svg'),
              Text(
                '01',
                style: TextStyle(
                    color: AppColors.graySecond,
                    fontSize: 55,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "Primeiro, escolha a data",
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
              "Você é quem define um período, e nós mostraremosos carros disponíveis.",
              style: TextStyle(color: AppColors.grayText, height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}
