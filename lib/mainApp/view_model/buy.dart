import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codashop_freefire/mainApp/model/valueController.dart';
import 'package:codashop_freefire/utils/AppConst.dart';
import 'package:get/get.dart';

class Buy extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double paddingLeft;
  final double paddingTop;

  final double buttonPaddingVertical;
  final double buttonPaddingHorizontal;

  Buy(
      {required this.width,
      required this.height,
      required this.title,
      required this.paddingLeft,
      required this.paddingTop,
      required this.buttonPaddingVertical,
      required this.buttonPaddingHorizontal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'OPTIONAL: If you would like a receipt of the purchase by email, please enter an email address',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: 'E-mail address',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                  controller: ValueController.refEmailController.value,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Obx(
                    () => MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          ValueController.checkBoxValue.value =
                              !ValueController.checkBoxValue.value;
                        },
                        child: SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: ValueController.checkBoxValue.value,
                                onChanged: (value) {
                                  ValueController.checkBoxValue.value =
                                      value!;
                                },
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if(ValueController.playIDController.value.text.isEmpty){
                        Get.snackbar('Invalid player ID', 'Given player ID is not correct',colorText: Colors.white,backgroundColor: Colors.black);
                      }else if(ValueController.selectedAmount.value == 0){
                        Get.snackbar('No amount is selected', 'Select the amount of diamonds',colorText: Colors.white,backgroundColor: Colors.black);
                      }else{
                        Get.snackbar('Nope', 'It\'s only a demo page, nothing will happen',colorText: Colors.white,backgroundColor: Colors.black);
                      }
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: AppConst.colorButton),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonPaddingHorizontal,
                          vertical: buttonPaddingVertical),
                      child: Text(
                        'Buy now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
