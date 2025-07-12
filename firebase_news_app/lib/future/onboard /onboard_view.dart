import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';

import 'package:firebase_news_app/product/widgets/carosel_with_indicator.dart';

import 'package:firebase_news_app/product/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  static const buttonText = "Next";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          automaticallyImplyLeading: false, // 🔒 geri oku kaldır
        ),
        body: SafeArea(
          child: Column(
            children: [
              const CaroselWithIndicator(),

              SizedBox(height: context.sized.normalValue * 2),
              Text(
                'First to know',
                style: GoogleFonts.inter(
                  fontSize: MediaQuery.of(context).size.width * 0.060,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: context.sized.normalValue * 2),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'All news in one place, be the first to know last news',
                  style: GoogleFonts.inter(
                    fontSize: MediaQuery.of(context).size.width * 0.040,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: context.sized.normalValue * 3),
              Padding(
                padding: EdgeInsets.only(bottom: context.padding.medium.bottom),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.getStarted);
                  },
                  buttonText: buttonText,
                  isLoading: false,
                  fontSize: 2,
                  buttonRadius: 1,
                  buttonBgColor: ColorConstants.purpleDarker,
                  buttonFontWeight: FontWeight.w600,
                  buttonWidth: 20,
                  buttonHeight: 0.07,
                  buttonFontColor: Colors.white,
                  elevation: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
