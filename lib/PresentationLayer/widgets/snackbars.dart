import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/font_styles.dart';

class Snackbars {
  static void showSuccess(message) {
    Get.rawSnackbar(
        padding: EdgeInsets.symmetric(vertical: 2),
        title: "",
        messageText: Text(
          message,
          style: AppTextStyles.boldBodySmall.apply(color: BrainColors.White),
          textAlign: TextAlign.center,
        ),
        backgroundColor: BrainColors.success);
  }

  static void showError(message) {
    Get.rawSnackbar(
        padding: EdgeInsets.symmetric(vertical: 2),
        title: "",
        messageText: Text(
          message,
          style: AppTextStyles.boldBodySmall.apply(color: BrainColors.White),
          textAlign: TextAlign.center,
        ),
        backgroundColor: BrainColors.error);
  }

  static void showWarning(message) {
    Get.rawSnackbar(
        padding: EdgeInsets.symmetric(vertical: 2),
        title: "",
        messageText: Text(
          message,
          style: AppTextStyles.boldBodySmall.apply(color: BrainColors.White),
          textAlign: TextAlign.center,
        ),
        backgroundColor: BrainColors.error);
  }
}
