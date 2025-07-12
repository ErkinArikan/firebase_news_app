import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';
import 'package:firebase_news_app/product/widgets/custom_button.dart';
import 'package:firebase_news_app/product/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.sized.normalValue * 1.5,
              vertical: context.sized.normalValue * 1.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Nuntium 👋',
                  style: GoogleFonts.inter(
                    fontSize: MediaQuery.of(context).size.width * 0.060,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: context.sized.normalValue),
                Text(
                  'Hello, I guess you are new around here. You can start using the application after sign up.',
                  style: GoogleFonts.inter(
                    fontSize: MediaQuery.of(context).size.width * 0.040,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: context.sized.normalValue * 2),
                CustomTextField(
                  controller: emailController,
                  labelText: 'User name',
                  hintText: '',
                  inputType: TextInputType.emailAddress,
                  prefixIcon: Icons.person,
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
                SizedBox(height: context.sized.normalValue),
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
                SizedBox(height: context.sized.normalValue),
                CustomTextField(
                  controller: emailController,
                  labelText: 'Password',
                  hintText: '',
                  inputType: TextInputType.emailAddress,
                  prefixIcon: Icons.lock,
                  borderRadius: context.sized.lowValue * 2, // double ✅
                  borderColor: const Color.fromARGB(
                    255,
                    245,
                    246,
                    250,
                  ), // Color ✅
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
                SizedBox(height: context.sized.normalValue),
                CustomTextField(
                  controller: emailController,
                  labelText: 'Repeat Password',
                  hintText: '',
                  inputType: TextInputType.emailAddress,
                  prefixIcon: Icons.lock,
                  borderRadius: context.sized.lowValue * 2, // double ✅
                  borderColor: const Color.fromARGB(
                    255,
                    245,
                    246,
                    250,
                  ), // Color ✅
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

                SizedBox(height: context.sized.normalValue * 3),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signUp);
                  },
                  buttonText: 'Sign In',
                  isLoading: false,
                  fontSize: 2,
                  buttonRadius: 1,
                  buttonBgColor: ColorConstants.purpleDarker,
                  buttonFontWeight: FontWeight.w600,
                  buttonWidth: 20,
                  buttonHeight: 0.07,
                  buttonFontColor: Colors.white,
                  elevation: 2,
                ),
                SizedBox(height: context.sized.normalValue * 9),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                    child: Text(
                      "Already have an account? Sign in",
                      style: GoogleFonts.inter(
                        fontSize: context.sized.lowValue * 1.8,
                        color: const Color(0xff6E7FAA),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
