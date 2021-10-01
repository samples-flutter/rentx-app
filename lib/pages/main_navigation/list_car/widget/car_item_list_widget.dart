import 'package:flutter/material.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
import 'package:rentx/styles/app_colors.dart';

class CarItemListWidget extends StatelessWidget {
  final CarModel car;

  const CarItemListWidget({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.main,
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Column(
              children: [
                Text(car.brand),
                Text(car.model),
                SizedBox(height: 16),
                Text("AO DIA"),
                Text(car.value),
              ],
            ),
            Image.asset(car.image, fit: BoxFit.fill,)
          ],
        ),
      ),
    );
  }
}
