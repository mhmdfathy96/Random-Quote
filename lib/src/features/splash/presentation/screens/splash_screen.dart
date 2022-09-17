import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/utils/assets_manager.dart';

import '../../../../config/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  _nextTo() =>
      Navigator.of(context).pushReplacementNamed(Routes.randomQuoteRoute);

  _startDelay() {
    _timer = Timer(
        const Duration(
          milliseconds: 500,
        ),
        () => _nextTo());
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImgAssets.quote),
      ),
    );
  }
}
