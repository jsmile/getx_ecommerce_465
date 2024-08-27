import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/utils/constants/text_strings.dart';
import '/utils/constants/image_strings.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

import '/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizental Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                // image: TImages.onBoardingImage1,
                image: TImages.banner1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                // image: TImages.onBoardingImage2,
                image: TImages.banner2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                // image: TImages.onBoardingImage3,
                image: TImages.banner3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnboardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// Circular Button
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
