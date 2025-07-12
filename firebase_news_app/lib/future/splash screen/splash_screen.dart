import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // TODO: Burda bilerek pushReplacement kullandık ki bu sayfayı stackten fırlatalaım.
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onboard); // ✅ bu olur
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.purplePrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              'assets/icons/ic_logo.png',
              width: context.sized.normalValue * 3,
            ),
            SizedBox(height: context.sized.normalValue * 0.9),
            Image.asset(
              'assets/icons/ic_logo_header.png',
              height: context.sized.normalValue * 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
