import 'package:flutter/material.dart';
import 'package:motivational_app/provider/drawer_button_provider.dart';
import 'package:motivational_app/reusablewidgets/reusable_neomorphism_button.dart';
import 'package:motivational_app/theme/theme_data.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.primaryBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 120, bottom: 350),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Consumer<HomeButtonProvider>(
              builder: (BuildContext context, HomeButtonProvider value,
                  Widget? child) {
                return ReusableNeomorphismButton(
                  title: 'Home',
                  onTap: () {
                    value.setButtonPressed();
                  },
                  toggleElevation: value.isButtonPressed,
                );
              },
            ),
            Consumer<ContactButtonProvider>(
              builder: (BuildContext context, ContactButtonProvider value,
                  Widget? child) {
                return ReusableNeomorphismButton(
                  title: 'Contact',
                  onTap: () {
                    value.setButtonPressed();
                  },
                  toggleElevation: value.isButtonPressed,
                );
              },
            ),
            Consumer<AboutButtonProvider>(
              builder: (BuildContext context, AboutButtonProvider value,
                  Widget? child) {
                return ReusableNeomorphismButton(
                  title: 'About us',
                  onTap: () {
                    value.setButtonPressed();
                  },
                  toggleElevation: value.isButtonPressed,
                );
              },
            ),
            Consumer<RateButtonProvider>(
              builder: (BuildContext context, RateButtonProvider value,
                  Widget? child) {
                return ReusableNeomorphismButton(
                  title: 'Rate us',
                  onTap: () {
                    value.setButtonPressed();
                  },
                  toggleElevation: value.isButtonPressed,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
