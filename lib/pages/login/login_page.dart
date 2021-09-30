import 'package:flutter/material.dart';
import 'package:rentx/app/widget/app_bar_rendx.dart';
import 'package:rentx/app/widget/button_rentx.dart';
import 'package:rentx/pages/login/widget/text_field_login.dart';
import 'package:rentx/pages/search_car/search_car_page.dart';
import 'package:rentx/styles/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRendX(onBackClick: ()=>Navigator.pop(context),),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Estamos \nquase lá',
                    style: TextStyle(
                        color: AppColors.grayTitle,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Faça seu login para começar \numa experiência incrível.',
                    style: TextStyle(
                        height: 1.5,
                        color: AppColors.grayText,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                children: [
                  TextFieldLogin(
                      hint: "E-mail",
                      inputType: InputType.email,
                      onChange: (text) => {print(text)}),
                  SizedBox(height: 8),
                  TextFieldLogin(
                      hint: "Senha",
                      inputType: InputType.password,
                      onChange: (text) => {print(text)}),
                  SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (isChecked) {}),
                          Text(
                            'Lembrar-me',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textDark),
                          ),
                        ],
                      ),
                      Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                            color: AppColors.textDark,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(height: 34),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ButtonRentx(
                          label: "Login",
                          color: AppColors.primary,
                          action: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SearchCarPage()));
                          }))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
