import 'package:flutter/material.dart';
import 'package:codashop_freefire/utils/widget/customPainter.dart';

class CheckTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: ClipPath(
        clipper: CustomTriangleClipper(),
        child: Container(
          width: 35,
          height: 35,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFF6C2C), Color(0xffFF6C2C)],
            ),
          ),
          child: Icon(Icons.check,color: Colors.white,size: 20,),
        ),
      ),
    );
  }
}
