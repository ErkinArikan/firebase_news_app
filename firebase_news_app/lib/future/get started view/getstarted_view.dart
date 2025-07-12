import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';
import 'package:firebase_news_app/product/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kartal/kartal.dart';

class GetstartedView extends StatefulWidget {
  const GetstartedView({super.key});

  @override
  State<GetstartedView> createState() => _GetstartedViewState();
}

class _GetstartedViewState extends State<GetstartedView> {
  @override
  Widget build(BuildContext context) {
    const buttonText = 'Get Started';
    const text2 = 'All news in one place, be the first to know last news';
    const text1 = 'Nuntium';
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false, // 🔒 geri oku kaldır
      ),
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assets/icons/ic_handshake.png'),

          const Spacer(),
          Text(
            text1,
            style: GoogleFonts.inter(
              fontSize: MediaQuery.of(context).size.width * 0.060,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.sized.normalValue * 1.2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              text2,
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
            padding: EdgeInsets.only(bottom: context.padding.high.bottom * 0.9),
            child: CustomButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
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
    );
  }
}
