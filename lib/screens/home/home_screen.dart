import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/home_widgets/body.dart';

import 'home_widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
          onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
    );
  }
}

