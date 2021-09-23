import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/detail/detail_widgets/image_and_icon_card.dart';
import 'package:plant_app_ui/screens/detail/detail_widgets/title_and_price.dart';
import 'buy_and_description_btn.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(),
          TitleAndPrice(),
          SizedBox(height: kDefaultPadding),
          BuyAndDescriptionBtn(),
        ],
      ),
    );
  }
}




