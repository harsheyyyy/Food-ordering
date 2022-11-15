import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Food_ordering/components/colors.dart';
import 'package:Food_ordering/uitls/app_dimensions.dart';
import 'package:Food_ordering/widgets/big_text.dart';
void showCustomSnackBar(String message, {bool isError = true, String title="Errors"}) {

  Get.snackbar(

    title,

    message,
    titleText: BigText(text: title, color: Colors.white),
    messageText: Text(message, style: TextStyle(
      color: Colors.white
    ),),
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.redAccent
  );


}