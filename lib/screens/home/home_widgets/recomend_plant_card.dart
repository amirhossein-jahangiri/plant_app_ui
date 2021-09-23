import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    this.title,
    this.imageUrl,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String? title , imageUrl , country;
  final int? price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        left: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.33,
      child: Column(
        children: [
          Image(image: AssetImage(imageUrl!)),
          InkWell(
            onTap: press!,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '$title!\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country!.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$440',
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
