import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentx/pages/splashscreen/splash_logo.dart';

class SplashUnion extends StatefulWidget {
  const SplashUnion({Key? key}) : super(key: key);

  @override
  _SplashUnionState createState() => _SplashUnionState();
}

class _SplashUnionState extends State<SplashUnion> {
  bool _visibleLogo = true;

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      _visibleLogo = !_visibleLogo;
      _goToSplashLogo(context);
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
          duration: const Duration(seconds: 2),
          child: SvgPicture.asset('images/union.svg'),
        ),
      ),
    );
  }

  _goToSplashLogo(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashLogo()));
  }
}
