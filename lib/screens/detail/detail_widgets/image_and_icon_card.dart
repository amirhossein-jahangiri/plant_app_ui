import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';


class ImageAndIconCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: [
                    // back button
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),

                    Spacer(),

                    // icon button
                    IconCard('assets/icons/sun.svg'),
                    IconCard('assets/icons/icon_2.svg'),
                    IconCard('assets/icons/icon_3.svg'),
                    IconCard('assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            buildImageShower(context),
          ],
        ),
      ),
    );
  }
  Widget buildImageShower(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(65.0),
          bottomLeft: Radius.circular(65.0),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.centerLeft,
          image: AssetImage('assets/images/img.png'),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60.0,
            color: kPrimaryColor.withOpacity(0.29),
          ),
        ],
      ),
    );
  }
}
