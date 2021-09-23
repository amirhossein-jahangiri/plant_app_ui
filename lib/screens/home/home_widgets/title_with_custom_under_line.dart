import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    this.title,
    Key? key,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              title!,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
