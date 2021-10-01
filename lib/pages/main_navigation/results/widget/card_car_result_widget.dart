import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
import 'package:rentx/styles/app_colors.dart';

class CardCarResultWidget extends StatelessWidget {
  final CarModel car;

  const CardCarResultWidget(
      {Key? key,
      required this.car})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.main,
      child: Container(
        padding: EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                          color: AppColors.grayTitle,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AO DIA',
                      style: TextStyle(
                          color: AppColors.grayTextDetails,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "R\$ ${car.value}",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 14),
            Container(
                height: 119,
                width: double.infinity,
                child: Image.asset(car.image, fit: BoxFit.contain)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                car.isGas
                    ? SizedBox(
                        height: 26,
                        width: 20,
                        child: SvgPicture.asset('images/gas.svg'))
                    : SizedBox(
                        height: 26,
                        width: 20,
                        child: SvgPicture.asset('images/eletric.svg')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 4,
                        width: 4,
                        child:
                            CircleAvatar(backgroundColor: AppColors.grayTitle)),
                    SizedBox(width: 8),
                    SizedBox(
                        height: 4,
                        width: 4,
                        child: CircleAvatar(
                            backgroundColor: AppColors.grayTextDetails)),
                    SizedBox(width: 8),
                    SizedBox(
                        height: 4,
                        width: 4,
                        child: CircleAvatar(
                            backgroundColor: AppColors.grayTextDetails)),
                    SizedBox(width: 8),
                    SizedBox(
                        height: 4,
                        width: 4,
                        child: CircleAvatar(
                            backgroundColor: AppColors.grayTextDetails)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
