import 'package:get/get.dart';
import 'package:mytestbox/views/chatlist/chat_list.dart';
import 'package:mytestbox/views/notifications/notifications.dart';
// import 'package:mytestbox/config/app_binding.dart';
import 'package:mytestbox/views/profile/profile.dart';
import 'package:mytestbox/views/profile/profile_controller.dart';
import 'package:mytestbox/views/whatsnew/whats_new.dart';
import '../views/chatlist/chatlist_controller.dart';
import '../views/notifications/notifications_controller.dart';
import '../views/welcome/welcome.dart';
import '../views/welcome/welcome_controller.dart';
import '../views/signin/signin.dart';
import '../views/signin/signin_controller.dart';
import '../views/signup/signup.dart';
import '../views/signup/signup_controller.dart';
import '../views/resetpass/reset_password.dart';
import '../views/resetpass/reset_controller.dart';
import '../views/otpverif/otp_verif.dart';
import '../views/otpverif/otp_controller.dart';
import '../views/home/home.dart';
import '../views/home/home_controller.dart';
import '../views/whatsnew/whatsnew_controller.dart';

class AppRoutes {
  static final routes = [
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
    GetPage(
        name: '/home',
        page: () => const HomePage(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => HomeController());
        })),
    GetPage(
      name: '/profile',
      page: () => const ProfilePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ProfileController>(() => ProfileController());
      }),
    ),
    GetPage(
      name: '/profile',
      page: () => const ProfilePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ProfileController>(() => ProfileController());
      }),
    ),
    GetPage(
      name: '/whatsnew',
      page: () => const WhatsNewPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<WhatsNewController>(() => WhatsNewController());
      }),
    ),
    GetPage(
      name: '/chatlist',
      page: () => const ChatListPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ChatListController>(() => ChatListController());
      }),
    ),
    GetPage(
      name: '/notifications',
      page: () => const NotificationsPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<NotificationsController>(() => NotificationsController());
      }),
    ),
  ];
}
