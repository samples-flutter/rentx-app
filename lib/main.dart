import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:rentx/pages/splashscreen/splash_union.dart';

void main() {
 runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(41, 41, 46, .1),
  100: Color.fromRGBO(41, 41, 46, .2),
  200: Color.fromRGBO(41, 41, 46, .3),
  300: Color.fromRGBO(41, 41, 46, .4),
  400: Color.fromRGBO(41, 41, 46, .5),
  500: Color.fromRGBO(41, 41, 46, .6),
  600: Color.fromRGBO(41, 41, 46, .7),
  700: Color.fromRGBO(41, 41, 46, .8),
  800: Color.fromRGBO(41, 41, 46, .9),
  900: Color.fromRGBO(41, 41, 46, 1),
};

class MyApp extends StatelessWidget {
  MaterialColor colorCustom = MaterialColor(0xFF29292e, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: SplashUnion(),
    );
  }
}
