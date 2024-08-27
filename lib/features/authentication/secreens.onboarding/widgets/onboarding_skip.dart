import 'package:flutter/material.dart';
import 'package:getx_ecommerce_465/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '/utils/constants/sizes.dart';
import '/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('skip'),
      ),
    );
  }
}
