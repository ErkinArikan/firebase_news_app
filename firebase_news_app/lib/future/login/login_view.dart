import 'package:firebase_news_app/core/routing/app_routing.dart';
import 'package:firebase_news_app/product/constants/color_constants.dart';
import 'package:firebase_news_app/product/widgets/custom_button.dart';
import 'package:firebase_news_app/product/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatelessWidget {
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const header = 'Welcome Back 👋';
    const secondText =
        'I am happy to see you again. You can continue where you left off by logging in';

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.sized.normalValue * 1.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Spacer(),
                  SizedBox(height: context.sized.normalValue * 0.7),
                  Text(
                    header,
                    style: GoogleFonts.inter(
                      fontSize: MediaQuery.of(context).size.width * 0.060,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.sized.normalValue * 0.7),
                  Text(
                    secondText,
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
                  SizedBox(height: context.sized.normalValue),

                  CustomTextField(
                    controller: passwordController,
                    labelText: 'Password',
                    hintText: '',
                    inputType:
                        TextInputType.text, // şifre için doğru klavye tipi
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: Icons.visibility_off, // göz ikonu başlangıç
                    obscureText: true, // yazılar gizli olacak
                    borderRadius: context.sized.lowValue * 2,
                    borderColor: ColorConstants.greyPrimary,
                    fillColor: ColorConstants.greyPrimary,
                    textColor: Colors.black,
                    fontSize: context.sized.lowValue * 1.5,
                    fontWeight: FontWeight.normal,
                    padding: EdgeInsets.symmetric(
                      horizontal: context.sized.normalValue,
                      vertical: context.sized.normalValue * 0.3,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: context.sized.normalValue * 0.01,
                    ),
                    onChanged: (value) {
                      debugPrint('Password girildi: $value');
                    },
                    isEnabled: true,
                    iconsColor: const Color(0xff6E7FAA),
                  ),
                  SizedBox(height: context.sized.normalValue),
                  Padding(
                    padding: EdgeInsets.only(
                      right: context.padding.low.right * 0.3,
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.forget);
                          },
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.inter(
                              fontSize: context.sized.lowValue * 1.5,
                              color: const Color(0xff6E7FAA),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.sized.normalValue * 2),

                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.login);
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
                    elevation: 5,
                  ),
                  SizedBox(height: context.sized.normalValue * 3),
                  Center(
                    child: Text(
                      'or',
                      style: GoogleFonts.inter(
                        fontSize: context.sized.lowValue * 1.8,
                        color: const Color(0xff6E7FAA),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: context.sized.normalValue * 3),
                  CustomButton(
                    onTap: () {},
                    buttonText: 'Sign In with Google',
                    isLoading: false,
                    fontSize: 2,
                    buttonRadius: 1,
                    buttonBgColor: Colors.white,
                    buttonFontWeight: FontWeight.w600,
                    buttonWidth: 100,
                    buttonHeight: 0.07,
                    buttonFontColor: const Color(0xff6E7FAA),
                    elevation: 1,
                    leading: Image.asset(
                      'assets/icons/ic_googleLogo.png',
                      height: 30,
                    ),
                  ),
                  SizedBox(height: context.sized.normalValue * 0.7),
                  CustomButton(
                    onTap: () {},
                    buttonText: 'Sign In with Apple',
                    isLoading: false,
                    fontSize: 2,
                    buttonRadius: 1,
                    buttonBgColor: Colors.white,
                    buttonFontWeight: FontWeight.w600,
                    buttonWidth: 100,
                    buttonHeight: 0.07,
                    buttonFontColor: const Color(0xff6E7FAA),
                    leading: Image.asset(
                      'assets/icons/ic_facebookLogo.png',
                      height: 30,
                    ),
                    elevation: 1,
                  ),

                  SizedBox(height: context.sized.normalValue * 2),
                  Padding(
                    padding: EdgeInsets.only(top: context.sized.normalValue),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        },
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: GoogleFonts.inter(
                            fontSize: context.sized.lowValue * 1.8,
                            color: const Color(0xff6E7FAA),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
