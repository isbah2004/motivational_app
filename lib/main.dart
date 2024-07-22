import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_app/firebase_options.dart';
import 'package:motivational_app/internetconnectivitysetup/internet_connecitivity.dart';
import 'package:motivational_app/provider/drawer_button_provider.dart';
import 'package:motivational_app/splashscreen/splash_screen.dart';
import 'package:motivational_app/theme/theme_data.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  Get.put(InternetController(), permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers:  [
      ChangeNotifierProvider(create: (_) => HomeButtonProvider(),),
      ChangeNotifierProvider(create: (_) => ContactButtonProvider(),),
      ChangeNotifierProvider(create: (_) => AboutButtonProvider(),),
      ChangeNotifierProvider(create: (_) => RateButtonProvider(),),
     
    ],
    child:
     GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    ),
    );
  }
}
