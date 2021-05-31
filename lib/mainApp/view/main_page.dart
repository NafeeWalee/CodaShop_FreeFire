import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:codashop_freefire/mainApp/model/valueController.dart';
import 'package:codashop_freefire/mainApp/view_model/buy.dart';
import 'package:codashop_freefire/mainApp/view_model/cardBuilder.dart';
import 'package:codashop_freefire/mainApp/view_model/playerIDWidget.dart';
import 'package:codashop_freefire/mainApp/view_model/selectPayment.dart';
import 'package:codashop_freefire/mainApp/view_model/selectRecharge.dart';
import 'package:codashop_freefire/utils/AppConst.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    ///Mobile builds - widthSize less than 630
    Obx buildDescriptionMobile() {
      return Obx(()=>AnimatedContainer(
        height: ValueController.descriptionInfo.value?500:140,
        duration: Duration(milliseconds: 150),
        child: SingleChildScrollView(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Free Fire',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.7,
                ),
              ),
              Text(
                'Top up any amount of diamonds & get 45% Discount & Cyber Bounty Hunter AUG Crate for FREE!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              Text(
                'Terms & Conditions:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  r'''
•  Period: 24 May 2021 00:00 - 30 May 2021 21:59 (GMT+6)
•  Gifts will be sent after 48 hours of transaction.
•  Offer is valid only on making payment on Codashop.
•  45% Discount is applicable on all Free Fire transactions.,
•  Codashop User can avail the in-game item only once.''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'M',
                    height: 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Free Fire Diamond top up at Codashop is easy as counting 1, 2, 3! Just enter your FF user ID, select the amount of Diamonds you wish to purchase, complete the payment and the Diamonds will be added immediately to your Free Fire account.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  wordSpacing: 1,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pay conveniently with bKash. There\'s no credit card, registration, or log-in required.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Download & play Free Fire today!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'asset/app_store_coda.png',
                    scale: 1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/google_play_coda.png',
                    scale: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ));
    }
    Column buildCardsMobile(double width) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardBuilder(
            number: 1,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: PlayerIDWidget(
              width: width, height: 160, title: 'Enter Player ID',paddingLeft: 0,paddingTop: 5,),
          ),
          CardBuilder(
            number: 2,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: SelectRecharge(
              width: width, height: 315, title: 'Select Recharge',paddingLeft: 0,paddingTop: 5,gridSize: 2,fontSize: 16,),
          ),
          CardBuilder(
            number: 3,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: SelectPayment(
              width: width, height: 195, title: 'Select Payment',paddingLeft: 0,paddingTop: 5,marginPrice: 1,),
          ),
          CardBuilder(
            number: 4,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: Buy(width: width, height: 230, title: 'Get Free Diamonds!',paddingLeft: 0,paddingTop: 5,buttonPaddingHorizontal: 30,buttonPaddingVertical: 4,),
          ),
        ],
      );
    }

    ///Mobile builds - widthSize less than 750
    Obx buildDescriptionTablet() {
      return Obx(()=>AnimatedContainer(
        height: ValueController.descriptionInfo.value?430:140,
        duration: Duration(milliseconds: 150),
        child: SingleChildScrollView(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Free Fire',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.7,
                ),
              ),
              Text(
                'Top up any amount of diamonds & get 45% Discount & Cyber Bounty Hunter AUG Crate for FREE!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              Text(
                'Terms & Conditions:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  r'''
•  Period: 24 May 2021 00:00 - 30 May 2021 21:59 (GMT+6)
•  Gifts will be sent after 48 hours of transaction.
•  Offer is valid only on making payment on Codashop.
•  45% Discount is applicable on all Free Fire transactions.,
•  Codashop User can avail the in-game item only once.''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'M',
                    height: 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Free Fire Diamond top up at Codashop is easy as counting 1, 2, 3! Just enter your FF user ID, select the amount of Diamonds you wish to purchase, complete the payment and the Diamonds will be added immediately to your Free Fire account.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  wordSpacing: 1,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pay conveniently with bKash. There\'s no credit card, registration, or log-in required.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Download & play Free Fire today!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'asset/app_store_coda.png',
                    scale: 1.2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/google_play_coda.png',
                    scale: 1.2,
                  ),
                ],
              )
            ],
          ),
        ),
      ));
    }
    Column buildCardsTablet(double width) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardBuilder(
            number: 1,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: PlayerIDWidget(
              width: width, height: 160, title: 'Enter Player ID',paddingLeft: 0,paddingTop: 5,),
          ),
          CardBuilder(
            number: 2,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: SelectRecharge(
              width: width, height: 255, title: 'Select Recharge',paddingLeft: 0,paddingTop: 5,gridSize: 3,fontSize: 14,),
          ),
          CardBuilder(
            number: 3,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: SelectPayment(
              width: width, height: 195, title: 'Select Payment',paddingLeft: 0,paddingTop: 5,marginPrice: 1,),
          ),
          CardBuilder(
            number: 4,
            numberPositionLeft: 10,
            numberPositionTop: 3,
            topGap: 7,
            child: Buy(width: width, height: 195, title: 'Get Free Diamonds!',paddingLeft: 0,paddingTop: 5,buttonPaddingHorizontal: 20,buttonPaddingVertical: 4,),
          ),
        ],
      );
    }

    ///Desktop builds - widthSize less than 1000
    Expanded buildDescriptionDesktop() {
      return Expanded(
        flex: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 27,
            ),
            Image.asset('asset/freefire_banner.jpg'),
            Text(
              'Free Fire',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 1.7,
              ),
            ),
            Text(
              'Top up any amount of diamonds & get 45% Discount & Cyber Bounty Hunter AUG Crate for FREE!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            Text(
              'Terms & Conditions:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                r'''
•  Period: 24 May 2021 00:00 - 30 May 2021 21:59 (GMT+6)
•  Gifts will be sent after 48 hours of transaction.
•  Offer is valid only on making payment on Codashop.
•  45% Discount is applicable on all Free Fire transactions.,
•  Codashop User can avail the in-game item only once.''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'M',
                  height: 1.7,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Free Fire Diamond top up at Codashop is easy as counting 1, 2, 3! Just enter your FF user ID, select the amount of Diamonds you wish to purchase, complete the payment and the Diamonds will be added immediately to your Free Fire account.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                wordSpacing: 1,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pay conveniently with bKash. There\'s no credit card, registration, or log-in required.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Download & play Free Fire today!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'asset/app_store_coda.png',
                  scale: 1.4,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'asset/google_play_coda.png',
                  scale: 1.4,
                ),
              ],
            )
          ],
        ),
      );
    }
    Expanded buildCardsDesktop(double width) {
      return Expanded(
        flex: 11,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardBuilder(
              number: 1,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: PlayerIDWidget(
                width: width, height: 140, title: 'Enter Player ID',paddingLeft: 20,paddingTop: 5,),
            ),
            CardBuilder(
              number: 2,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: SelectRecharge(
                width: width, height: 315, title: 'Select Recharge',paddingLeft: 20,paddingTop: 5,gridSize: 2,fontSize: 16,),
            ),
            CardBuilder(
              number: 3,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: SelectPayment(
                width: width, height: 195, title: 'Select Payment',paddingLeft: 20,paddingTop: 5,marginPrice: 150,),
            ),
            CardBuilder(
              number: 4,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: Buy(width: width, height: 210, title: 'Get Free Diamonds!',paddingLeft: 20,paddingTop: 5,buttonPaddingHorizontal: 60,buttonPaddingVertical: 8),
            ),
          ],
        ),
      );
    }

    ///Desktop builds - widthSize more than 1000
    Expanded buildDescriptionWeb() {
      return Expanded(
        flex: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 27,
            ),
            Image.asset('asset/freefire_banner.jpg'),
            Text(
              'Free Fire',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 1.7,
              ),
            ),
            Text(
              'Top up any amount of diamonds & get 45% Discount & Cyber Bounty Hunter AUG Crate for FREE!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            Text(
              'Terms & Conditions:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                r'''
•  Period: 24 May 2021 00:00 - 30 May 2021 21:59 (GMT+6)
•  Gifts will be sent after 48 hours of transaction.
•  Offer is valid only on making payment on Codashop.
•  45% Discount is applicable on all Free Fire transactions.,
•  Codashop User can avail the in-game item only once.''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'M',
                  height: 1.7,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Free Fire Diamond top up at Codashop is easy as counting 1, 2, 3! Just enter your FF user ID, select the amount of Diamonds you wish to purchase, complete the payment and the Diamonds will be added immediately to your Free Fire account.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                wordSpacing: 1,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pay conveniently with bKash. There\'s no credit card, registration, or log-in required.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Download & play Free Fire today!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'asset/app_store_coda.png',
                  scale: 1.4,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'asset/google_play_coda.png',
                  scale: 1.4,
                ),
              ],
            )
          ],
        ),
      );
    }
    Expanded buildCardsWeb(double width) {
      return Expanded(
        flex: 11,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardBuilder(
              number: 1,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: PlayerIDWidget(
                width: width, height: 140, title: 'Enter Player ID',paddingLeft: 20,paddingTop: 5,),
            ),
            CardBuilder(
              number: 2,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: SelectRecharge(
                width: width, height: 260, title: 'Select Recharge',paddingLeft: 20,paddingTop: 5,gridSize: 3,fontSize: 18,),
            ),
            CardBuilder(
              number: 3,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: SelectPayment(
                width: width, height: 205, title: 'Select Payment',paddingLeft: 20,paddingTop: 5,marginPrice: 150,),
            ),
            CardBuilder(
              number: 4,
              numberPositionLeft: 30,
              numberPositionTop: 10,
              topGap: 15,
              child: Buy(width: width, height: 200, title: 'Get Free Diamonds!',paddingLeft: 20,paddingTop: 5,buttonPaddingHorizontal: 60,buttonPaddingVertical: 8),
            ),
          ],
        ),
      );
    }

    Future.delayed(Duration(milliseconds: 1500),(){
      ValueController.loading.value = false;
    });

    return Scaffold(
      backgroundColor: AppConst.colorPrimary,
      body: Obx(() => ValueController.loading.value?Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ):SingleChildScrollView(child: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            if (viewportConstraints.maxWidth < 630) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('asset/codashop_logo.png'),
                        Icon(
                          CupertinoIcons.search,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset('asset/freefire_banner.jpg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buildDescriptionMobile(),
                        Obx(()=> GestureDetector(
                          onTap: (){
                            ValueController.descriptionInfo.value = !ValueController.descriptionInfo.value;
                          },
                          child: Text(
                            ValueController.descriptionInfo.value?'Less Info':'More Info',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              height: 1.7,
                            ),
                          ),
                        )),
                        buildCardsMobile(width),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ),
                ],
              );
            }
            else if (viewportConstraints.maxWidth < 750) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('asset/codashop_logo.png'),
                        Icon(
                          CupertinoIcons.search,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 640),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('asset/freefire_banner.jpg'),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                buildDescriptionTablet(),
                                Obx(()=> GestureDetector(
                                  onTap: (){
                                    ValueController.descriptionInfo.value = !ValueController.descriptionInfo.value;
                                  },
                                  child: Text(
                                    ValueController.descriptionInfo.value?'Less Info':'More Info',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      height: 1.7,
                                    ),
                                  ),
                                )),
                                buildCardsTablet(width),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else if (viewportConstraints.maxWidth < 1000) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1280),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/codashop_logo.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'The fastest & easiest way to buy game credits',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.search,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1000),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [buildDescriptionDesktop(), buildCardsDesktop(width)],
                      ),
                    ),
                  )
                ],
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1280),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/codashop_logo.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'The fastest & easiest way to buy game credits',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.search,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1260),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [buildDescriptionWeb(), buildCardsWeb(width)],
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),),)
    );
  }

}
