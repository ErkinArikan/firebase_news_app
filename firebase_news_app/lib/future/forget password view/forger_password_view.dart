import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';
import 'package:firebase_news_app/product/widgets/custom_button.dart';
import 'package:firebase_news_app/product/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class ForgerPasswordView extends StatefulWidget {
  const ForgerPasswordView({super.key});

  @override
  State<ForgerPasswordView> createState() => _ForgerPasswordViewState();
}

class _ForgerPasswordViewState extends State<ForgerPasswordView> {
  static TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.sized.normalValue * 1.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.sized.normalValue * 0.7),
                Text(
                  'Forgot Password 🤔',
                  style: GoogleFonts.inter(
                    fontSize: MediaQuery.of(context).size.width * 0.060,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: context.sized.normalValue * 0.7),
                Text(
                  'We need your email adress so we can send you the password reset code.',
                  style: GoogleFonts.inter(
                    fontSize: MediaQuery.of(context).size.width * 0.040,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: context.sized.normalValue * 2),
                CustomTextField(
                  controller: emailController,
                  labelText: 'Email Address',
                  hintText: '',
                  inputType: TextInputType.emailAddress,
                  prefixIcon: Icons.mail,
                  borderRadius: context.sized.lowValue * 2, // double ✅
                  borderColor: Color.fromARGB(255, 245, 246, 250), // Color ✅
                  fillColor: const Color.fromARGB(
                    255,
                    245,
                    246,
                    250,
                  ), // Color ✅
                  textColor: Colors.black, // Color ✅
                  fontSize: context.sized.lowValue * 1.5, // double ✅
                  fontWeight: FontWeight.normal, // FontWeight ✅
                  padding: EdgeInsets.symmetric(
                    horizontal: context.sized.normalValue,
                    vertical: context.sized.normalValue * 0.3,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: context.sized.normalValue * 0.01,
                  ),
                  onChanged: (value) {
                    debugPrint('E-mail girildi: $value');
                  },
                  isEnabled: true,
                  suffixIcon: null,
                  obscureText: false,
                  iconsColor: const Color(0xff6E7FAA),
                ),

                SizedBox(height: context.sized.normalValue * 2),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  buttonText: 'Send Code',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
