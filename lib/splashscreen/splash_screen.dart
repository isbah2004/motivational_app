import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motivational_app/homescreen/home_screen.dart';
import 'package:motivational_app/reusablewidgets/reusable_neomorphism_button.dart';
import 'package:motivational_app/theme/theme_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // final viewModelProvider = Provider.of<ViewModel>(context, listen: false);

    // viewModelProvider.fetchData().then(
    //   (value) {
    //     viewModelProvider.createCombinedList();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    );

    //   );
    // },
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundColor,
      body: Center(
        child: Hero(
         tag: 'appbarHero',
         child: ReusableNeomorphismButton(title: 'Motivational App', onTap: (){}, toggleElevation: false) ,  ),
      ),
    );
  }
}
