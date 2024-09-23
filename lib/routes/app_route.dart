import 'package:get/get_navigation/src/routes/get_route.dart';
import '../app/business logic/bindings/splash_bindings.dart';
import '../app/modules/auth/Login/login_screen.dart';
import '../app/modules/course/views/join_class_screen.dart';
import '../app/modules/home/views/home_screen.dart';
import '../app/modules/notification/notification_page.dart';
import '../app/modules/onboading/onboading/onboading_screen.dart';
import '../app/modules/onboading/splash/splash_screen.dart';

/// INITIAL UNIQUE ROUTE NAME
const String splash = '/splash_screen';
const String home = '/HomeScreen';
const String onboading = '/onboading_screen';
const String login = '/login_screen';
const String course = '/course_screen';
const String notification = '/notification_screen';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: onboading,
    page: () => const OnboadingScreen(),
  ),
  GetPage(
    name: login,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: course,
    page: () => const ClassJoin(),
  ),
  GetPage(
    name: notification,
    page: () => const NotificationPage(),
  ),
];
