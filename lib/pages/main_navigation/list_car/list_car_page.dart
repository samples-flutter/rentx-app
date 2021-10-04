import 'package:flutter/material.dart';
import 'package:rentx/pages/main_navigation/list_car/widget/car_item_list_widget.dart';
import 'package:rentx/pages/main_navigation/model/car_model.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.23,
            child: Stack(
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 56,
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.main,
                          height: 56,
                          width: size.width * 0.76,
                          child: TextField(

                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 24),
                              hintText: "Qual carro você procura?",
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(color: Colors.white, width: 2),
                        Expanded(
                          child: Material(
                            color: AppColors.main,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 56,
                                child: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                  SizedBox(height: 14)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
