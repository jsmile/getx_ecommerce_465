import 'package:flutter/material.dart';
import 'package:getx_ecommerce_465/utils/constants/image_strings.dart';
import 'package:getx_ecommerce_465/utils/constants/sizes.dart';
import 'package:getx_ecommerce_465/utils/constants/text_strings.dart';
import 'package:getx_ecommerce_465/utils/helpers/helper_functions.dart';

import '/common/styles/spacing_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // Form
              // Devider
              // Footer
            ],
          ),
        ),
      ),
    );
  }
}
