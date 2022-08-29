import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/screens/home/components/search_field.dart';
import 'package:flutter_travelers_app/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text(
              "Travelers",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(73),
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 0.5,
              ),
            ),
            const Text(
              "Travel Communşty App",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: const SearchField(),
        ),
      ],
    );
  }
}
