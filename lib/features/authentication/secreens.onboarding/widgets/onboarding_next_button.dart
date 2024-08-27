import 'package:flutter/material.dart';
import 'package:getx_ecommerce_465/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:getx_ecommerce_465/utils/constants/colors.dart';
import 'package:getx_ecommerce_465/utils/constants/sizes.dart';
import 'package:getx_ecommerce_465/utils/device/device_utility.dart';
import 'package:getx_ecommerce_465/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
