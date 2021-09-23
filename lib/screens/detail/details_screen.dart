import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/detail/detail_widgets/body.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
