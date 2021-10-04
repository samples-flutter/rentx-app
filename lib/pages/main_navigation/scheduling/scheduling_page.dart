import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/pages/main_navigation/list_car/widget/car_item_list_widget.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
import 'package:rentx/styles/app_colors.dart';

class SchedulingPage extends StatelessWidget {
  const SchedulingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          color: AppColors.black,
          width: size.width,
          height: size.height * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Agendamentos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '5 períodos',
                style: TextStyle(
                    color: AppColors.grayText,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) => Column(
              children: [
                CarItemListWidget(
                  car: CarModel("Lamborghini", "Huracan", "images/lambo.png",
                      "580", false),
                ),
                SizedBox(height: 2),
                Container(
                  color: AppColors.main,
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PERÍODO",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColors.grayTextDetails,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            "18 junho 2021",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.grayTitle,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset('images/arrow.svg'),
                          SizedBox(width: 10),
                          Text(
                            "28 junho 2021",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.grayTitle,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14)
              ],
            ),
          ),
        )
      ],
    );
  }
}
