import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/home_widgets/title_with_custom_under_line.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    this.title,
    this.press,
    Key? key,
  }) : super(key: key);

  final String? title;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderLine(title: title),
          TextButton(
            onPressed: press,
            child: Text('More',style: TextStyle(color: kBackgroundColor,fontWeight: FontWeight.bold)),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => kPrimaryColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              )),
            ),
          ),
        ],
      ),
    );
  }
}