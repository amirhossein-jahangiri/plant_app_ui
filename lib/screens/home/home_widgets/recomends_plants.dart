import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/detail/details_screen.dart';
import 'package:plant_app_ui/screens/home/home_widgets/recomend_plant_card.dart';

class RecomendsPlants extends StatelessWidget {

  void navigateToDetailScreen(context){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => DetailsScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            imageUrl: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () => navigateToDetailScreen(context),
          ),
          RecomendPlantCard(
            imageUrl: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            press: () => navigateToDetailScreen(context),
          ),
          RecomendPlantCard(
            imageUrl: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () => navigateToDetailScreen(context),
          ),
        ],
      ),
    );
  }
}