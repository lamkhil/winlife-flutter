import 'package:get/get.dart';
import 'package:winlife/bindings/auth_binding.dart';
import 'package:winlife/routes/app_routes.dart';
import 'package:winlife/screens/auth/landingpage.dart';
import 'package:winlife/screens/auth/lupapassword.dart';
import 'package:winlife/screens/auth/otppage.dart';
import 'package:winlife/screens/auth/registerSocialPage.dart';
import 'package:winlife/screens/auth/registerpage.dart';
import 'package:winlife/screens/main/dashboard.dart';
import 'package:winlife/screens/splashscreen.dart';
import 'package:winlife/screens/auth/loginpage.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => SplashScreen(),
        transition: Transition.fadeIn),
    GetPage(name: Routes.LANDING, page: () => LandingPage()),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
    ),
    GetPage(
      name: Routes.REGISTERSOCIAL,
      page: () => RegisterSocialPage(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OTPVerification(),
    ),
    GetPage(
      name: Routes.FORGETPASSWORD,
      page: () => LupaPasswordPage(),
    ),
    GetPage(
      name: Routes.CHANGEPASSWORD,
      page: () => LupaPasswordPage(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => DashboardPage(),
    ),
  ];
}