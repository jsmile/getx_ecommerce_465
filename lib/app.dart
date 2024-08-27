import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce_465/features/authentication/secreens.onboarding/onboarding_screen.dart';

import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, // Use the system theme
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
