import 'package:rentx/pages/main_navigation/model/car_model.dart';

class Data{
  static getCars() => [
    CarModel("Lamborghini", "Huracan", "images/lambo.png", "580", true),
    CarModel("Audi", "Huracan", "images/audi.png", "120", false),
    CarModel("Poche", "Panarema", "images/porche.png", "340", false),
    CarModel("Chevrolet", "Covette z06", "images/corvete.png", "580", false),
    CarModel("Volvo", "XC40", "images/volvo.png", "580", false),
    CarModel("Audi", "Huracan", "images/audi.png", "580", false),
  ];
}