import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/app/widget/button_rentx.dart';
import 'package:rentx/pages/main_navigation/main_navigation_page.dart';
import 'package:rentx/pages/search_car/widget/calendar_widget.dart';
import 'package:rentx/styles/app_colors.dart';

class SearchCarPage extends StatefulWidget {
  const SearchCarPage({Key? key}) : super(key: key);

  @override
  _SearchCarPageState createState() => _SearchCarPageState();
}

class _SearchCarPageState extends State<SearchCarPage> {
  String? dataStartString;
  String? dataEndString;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            color: AppColors.black,
            width: size.width,
            height: size.height * 0.36,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Escolha a\ndata e encontre\num carro.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DE',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        showDate(dataStartString),
                      ],
                    ),
                    SvgPicture.asset('images/arrow.svg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ATÉ',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        showDate(dataEndString),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: CalendarWidget(
            onChangeStart: (start) {
              setState(() {
                dataStartString = start;
              });
            },
            onChangeEnd: (end) {
              setState(() {
                dataEndString = end;
              });
            },
          )),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
            width: size.width,
            child: ButtonRentx(
                label: "Confirmar",
                color: AppColors.primary,
                action: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MainNavigation()))
                    }),
          )
        ],
      ),
    );
  }

  Widget showDate(String? value) {
    return value != null
        ? Text(
            value,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
          )
        : Text(
            '_________________________',
            style: TextStyle(
                fontSize: 10,
                color: AppColors.grayText,
                fontWeight: FontWeight.w500),
          );
  }
}
