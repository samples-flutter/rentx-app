import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
import 'package:rentx/styles/app_colors.dart';

class CarItemListWidget extends StatelessWidget {
  final CarModel car;

  const CarItemListWidget({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.main,
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car.brand,
                  style: TextStyle(
                      color: AppColors.grayTextDetails,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 4),
                Text(
                  car.model,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grayTitle),
                ),
                SizedBox(height: 16),
                Text("AO DIA",
                    style: TextStyle(
                        color: AppColors.grayTextDetails,
                        fontSize: 10,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'R\$ ${car.value}',
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 26),
                    car.isGas
                        ? SizedBox(
                            height: 26,
                            width: 20,
                            child: SvgPicture.asset('images/gas.svg'))
                        : SizedBox(
                            height: 26,
                            width: 20,
                            child: SvgPicture.asset('images/eletric.svg')),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              car.image,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
