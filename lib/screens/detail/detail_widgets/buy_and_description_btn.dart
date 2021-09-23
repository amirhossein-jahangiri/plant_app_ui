import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyAndDescriptionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: size.height * 0.1,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'buy now'.toUpperCase(),
              style: Theme.of(context).textTheme.headline5!.apply(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                      (states) => kPrimaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width / 2,
          height: size.height * 0.1,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Description',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
      ],
    );
  }
}