import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '/utils/constants/colors.dart';
import '/utils/constants/sizes.dart';
import '/utils/device/device_utility.dart';
import '/utils/helpers/helper_functions.dart';

import '/features/authentication/onboarding/controllers/onboarding_controller.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
