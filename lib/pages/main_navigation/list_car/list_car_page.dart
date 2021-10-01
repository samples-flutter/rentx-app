import 'package:flutter/material.dart';
import 'package:rentx/styles/app_colors.dart';

class ListCarPage extends StatefulWidget {
  const ListCarPage({Key? key}) : super(key: key);

  @override
  _ListCarPageState createState() => _ListCarPageState();
}

class _ListCarPageState extends State<ListCarPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          color: AppColors.black,
          width: size.width,
          height: size.height * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Listagem',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '4 carros',
                style: TextStyle(
                    color: AppColors.grayText,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .8,
            width: size.width,
            color: Colors.green,
          ),
        )
      ],
    );
  }
}
