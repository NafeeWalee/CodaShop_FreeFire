import 'package:flutter/material.dart';
import 'package:codashop_freefire/mainApp/model/valueController.dart';

class PlayerIDWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double paddingLeft;
  final double paddingTop;
  PlayerIDWidget({required this.width,required this.height,required this.title, required this.paddingLeft, required this.paddingTop});


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
          padding: EdgeInsets.all(8.0),
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
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 240,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          hintText: 'Enter Player ID',
                          hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 14)),
                      controller: ValueController.playIDController.value,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEE6E23),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Your player ID is shown on the profile page in the app. Example: “5363266446".',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
