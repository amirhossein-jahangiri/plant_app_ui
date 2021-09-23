import 'package:flutter/material.dart';

import '../../../constants.dart';


class TitleAndPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          // product title and country
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Angelica\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Russia',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),

          Spacer(),

          // product price
          Text(
            '\$440',
            style: Theme.of(context).textTheme.headline5!.apply(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}