import 'package:firebase_news_app/future/forget%20password%20view/forger_password_view.dart';
import 'package:firebase_news_app/future/get%20started%20view/getstarted_view.dart';
import 'package:firebase_news_app/future/login/login_view.dart';
import 'package:firebase_news_app/future/onboard%20/onboard_view.dart';
import 'package:firebase_news_app/future/sign%20up%20views/sign_up_view.dart';
import 'package:firebase_news_app/future/splash%20screen/splash_screen.dart';
import 'package:firebase_news_app/future/topic%20view/topic_view.dart';
import 'package:firebase_news_app/product/widgets/topic_row_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onboard = '/onboard';
  static const String splash = '/splash';
  static const String getStarted = '/getstarted';
  static const String login = '/login';
  static const String forget = '/forget';
  static const String signUp = '/signup';
  static const String topic = '/topic';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboard:
        return MaterialPageRoute(builder: (_) => const OnboardView());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case getStarted:
        return MaterialPageRoute(builder: (_) => const GetstartedView());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case forget:
        return MaterialPageRoute(builder: (_) => const ForgerPasswordView());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case topic:
        return MaterialPageRoute(builder: (_) => const TopicRowView());
      default:
        return MaterialPageRoute(
          builder:
              (_) => const Scaffold(
                body: Center(child: Text('404 - Sayfa bulunamadı')),
              ),
        );
    }
  }
}
