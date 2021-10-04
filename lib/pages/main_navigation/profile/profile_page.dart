import 'package:flutter/material.dart';
import 'package:rentx/pages/main_navigation/list_car/widget/car_item_list_widget.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
import 'package:rentx/styles/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * .3,
            child: Stack(
              children: [
                Container(
                  color: AppColors.black,
                  width: size.width,
                  height: size.height * .20,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset('images/person.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'Tiago\nLuchtenberg',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.grayTitle,
                fontWeight: FontWeight.w600,
                fontSize: 30),
          ),
          SizedBox(height: 64),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Agendamentos feitos',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayText,
                          fontSize: 15),
                    ),
                    Text(
                      '05',
                      style: TextStyle(
                          color: AppColors.grayTitle,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const Divider(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Carro favorito',
                      style: TextStyle(
                          color: AppColors.grayText,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    Text(
                      'Utilizado 2 vezes',
                      style: TextStyle(
                          color: AppColors.grayText,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                CarItemListWidget(
                  car: CarModel("Lamborghini", "Huracan", "images/lambo.png",
                      "580", false),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        elevation: 0,
        backgroundColor: AppColors.black,
        title: Text("Perfil"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.power_settings_new_rounded,
              color: AppColors.grayTextDetails,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.border_color_outlined,
            color: AppColors.grayTextDetails,
          ),
          onPressed: () {},
        ),
      );
}
