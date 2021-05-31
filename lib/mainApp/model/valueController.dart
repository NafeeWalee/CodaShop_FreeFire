import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ValueController{
  static final loading = false.obs;

  static final refEmailController = TextEditingController().obs;
  static final playIDController = TextEditingController().obs;

  static final fbEmailOrPhone = TextEditingController().obs;
  static final fbPassword = TextEditingController().obs;

  static final descriptionInfo = false.obs;
  static final selectedIndex = 99.obs;
  static final selectedAmount = 0.obs;
  static final checkBoxValue = false.obs;
}