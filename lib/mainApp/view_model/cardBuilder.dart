import 'package:flutter/material.dart';

class CardBuilder extends StatelessWidget {
  final int number;
  final Widget child;

  final double topGap;
  final double numberPositionTop;
  final double numberPositionLeft;

  const CardBuilder({required this.number,required this.child, required this.numberPositionTop, required this.numberPositionLeft, required this.topGap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: topGap,
              ),
              child,
            ],
          ),
          Positioned(
            top: numberPositionTop,
            left: numberPositionLeft,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffEE6E23),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
