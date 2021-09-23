import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme..apply(bodyColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
