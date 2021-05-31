
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:codashop_freefire/mainApp/view/main_page.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await load();
  setPathUrlStrategy();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Fire Top Up | Free Fire Diamonds',
      theme: ThemeData(primaryColor: Colors.white),
      home: MainScreen(),
    ),
  );
}
