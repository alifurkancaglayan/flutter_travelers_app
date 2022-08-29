import 'package:flutter/material.dart';

import 'package:flutter_travelers_app/screens/home/components/home_header.dart';
import 'package:flutter_travelers_app/screens/home/components/populer_places.dart';
import 'package:flutter_travelers_app/screens/home/components/top_travelers.dart';
import 'package:flutter_travelers_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.vertical,
      child: Column(
        children: const [
          HomeHeader(),
          VerticalSpacing(of: 60),
          PopulerPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
