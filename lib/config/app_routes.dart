import 'package:get/get.dart';
import 'package:mytestbox/views/home/home.dart';
import 'package:mytestbox/views/home/home_controller.dart';
import 'package:mytestbox/views/otpverif/otp_controller.dart';
import 'package:mytestbox/views/otpverif/otp_verif.dart';
import 'package:mytestbox/views/resetpass/reset_controller.dart';
import 'package:mytestbox/views/resetpass/reset_password.dart';
import 'package:mytestbox/views/signin/signin.dart';
import 'package:mytestbox/views/signin/signin_controller.dart';
import 'package:mytestbox/views/signup/signup.dart';
import 'package:mytestbox/views/signup/signup_controller.dart';
import 'package:mytestbox/views/welcome/welcome.dart';
import 'package:mytestbox/views/welcome/welcome_controller.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.put<HomeController>(HomeController());
      }),
    ),
    GetPage(
      name: '/welcome',
      page: () => const WelcomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<WelcomeController>(() => WelcomeController());
      }),
    ),
    GetPage(
      name: '/signin',
      page: () => const SignInPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<SignInController>(() => SignInController());
      }),
    ),
    GetPage(
      name: '/signup',
      page: () => const SignUpPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<SignUpController>(() => SignUpController());
      }),
    ),
    GetPage(
      name: '/otp',
      page: () => const OtpVerification(),
      binding: BindingsBuilder(() {
        Get.lazyPut<otpVerificationController>(
            () => otpVerificationController());
      }),
    ),
    GetPage(
      name: '/recover',
      page: () => const RecoverPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<RecoverController>(() => RecoverController());
      }),
    ),
  ];
}
