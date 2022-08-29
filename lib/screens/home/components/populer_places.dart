import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/components/place_card.dart';
import 'package:flutter_travelers_app/models/TravelSpot.dart';
import 'package:flutter_travelers_app/components/section_title.dart';
import 'package:flutter_travelers_app/size_config.dart';

class PopulerPlaces extends StatelessWidget {
  const PopulerPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        const VerticalSpacing(
          of: 20,
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                  ),
                  child: PlaceCard(
                    travelSpot: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
