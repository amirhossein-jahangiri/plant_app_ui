import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * .2,
      child: Stack(
        children: [
          // header
          Container(
            padding: EdgeInsets.only(
              right: kDefaultPadding,
              left: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * .2 -27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36.0),
                bottomLeft: Radius.circular(36.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Uishopy!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/images/logo.png'),
              ],
            ),
          ),

          // search box
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  suffixIcon: SvgPicture.asset('assets/icons/search.svg'),
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    maxWidth: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
