import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/home_widgets/recomend_plant_card.dart';
import 'package:plant_app_ui/screens/home/home_widgets/recomends_plants.dart';
import 'package:plant_app_ui/screens/home/home_widgets/title_with_more_btn.dart';

import 'featured_plants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // header
          HeaderWithSearchBox(),

          // title and more button
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),

          // recomended plant cart
          RecomendsPlants(),

          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: (){},
          ),

          // featured plants
          FeaturedPlants(),

          SizedBox(height: kDefaultPadding),

        ],
      ),
    );
  }
}





