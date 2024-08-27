import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find<OnboardingController>();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current Index index when Page Scroll.
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      //Get.to(LoginScreen())
      currentPageIndex.value = 0;
      pageController.jumpTo(0);
    } else {
      int pageIndex = currentPageIndex.value + 1;
      // currentPageIndex.value = pageIndex;
      pageController.jumpToPage(pageIndex);
    }
  }

  /// Update current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
