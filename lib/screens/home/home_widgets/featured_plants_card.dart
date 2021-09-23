import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    Key? key,
    this.image,
    this.press,
  }) : super(key: key);

  final String? image;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.22,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover),
        ),
      ),
    );
  }
}
