import 'package:flutter/material.dart';
import 'package:codashop_freefire/mainApp/model/valueController.dart';
import 'package:codashop_freefire/utils/widget/checkTag.dart';
import 'package:get/get.dart';

class SelectPayment extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double paddingLeft;
  final double paddingTop;
  final double marginPrice;

  SelectPayment(
      {required this.width, required this.height, required this.title, required this.paddingLeft, required this.paddingTop, required this.marginPrice});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft,top: paddingTop),
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
              Obx(
                () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 97,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(color: Color(0xffCECECE))),
                        child: Stack(
                          children: [
                            ValueController.selectedAmount.value != 0 ? CheckTag() : SizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                  child: Image.asset('asset/BKash_CHNL_LOGO.png'),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: marginPrice),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'PRICE',
                                          style: TextStyle(fontSize: 14,color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          '     FREE',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color: Color(0xffEEEEEE),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                                  child: Text(
                                    'Pay with bkash',
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'I want to use a different payment method',
                  style: TextStyle(fontSize: 14, color: Color(0xffFE832C), decoration: TextDecoration.underline,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
