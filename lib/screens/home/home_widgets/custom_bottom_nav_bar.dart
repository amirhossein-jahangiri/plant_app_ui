import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CustomBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding *2 ,
        vertical: kDefaultPadding / 2,
      ),
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 36.0,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/flower.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
          ),
        ],
      ),
    );
  }
}
