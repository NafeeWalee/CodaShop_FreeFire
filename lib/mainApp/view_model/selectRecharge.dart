import 'package:flutter/material.dart';
import 'package:codashop_freefire/mainApp/model/diamondListModel.dart';
import 'package:codashop_freefire/mainApp/model/valueController.dart';
import 'package:codashop_freefire/utils/widget/checkTag.dart';
import 'package:get/get.dart';

class SelectRecharge extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double fontSize;
  final int gridSize;
  final double paddingLeft;
  final double paddingTop;

  SelectRecharge(
      {required this.width, required this.height, required this.title, required this.paddingLeft, required this.paddingTop, required this.gridSize, required this.fontSize});

  @override
  Widget build(BuildContext context) {

    var _width = 200;
    var cellHeight = 150;
    var _aspectRatio = _width / cellHeight;
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
              GridView.builder(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 10),
                shrinkWrap: true,
                itemCount: DiamondAmount.diamondAmount.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridSize,
                    mainAxisExtent: 60,
                    childAspectRatio: _aspectRatio),
                itemBuilder: (context, index) {
                  DiamondAmount data = DiamondAmount.diamondAmount[index];
                  return Obx(()=> MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        ValueController.selectedIndex.value = index;
                        ValueController.selectedAmount.value = data.amount;
                        FocusScope.of(context).unfocus();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: Color(0xffCECECE))),
                          child: Stack(
                            children: [
                              ValueController.selectedIndex.value == index?CheckTag():SizedBox(),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${data.amount} diamonds',
                                    style: TextStyle(fontSize: fontSize),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }


}
