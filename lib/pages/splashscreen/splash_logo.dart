import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentx/pages/information/information_page.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  _SplashLogoState createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  bool _visibleLogo = true;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _visibleLogo = !_visibleLogo;
        _goToSplashUnion(context);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          opacity: _visibleLogo ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: SvgPicture.asset('images/logo.svg'),
        ),
      ),
    );
  }

  _goToSplashUnion(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InformationPage()));
  }
}
