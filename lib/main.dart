import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms/routes/app_route.dart';
import 'package:lms/utils/app_config.dart';

void main() async {
  /// Ensure Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  /// System Overlay Style...
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  /// Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: AppConfig.name,
          debugShowCheckedModeBanner: false,
          initialRoute: splash,
          getPages: getPages,
        );
      },
    );
  }
}
