import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/components/section_title.dart';
import 'package:flutter_travelers_app/constants.dart';
import 'package:flutter_travelers_app/models/Users.dart';
import 'package:flutter_travelers_app/size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Top Travelers on Spark",
          press: () {},
        ),
        const VerticalSpacing(
          of: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefualtShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(
                  users: topTravelers[index],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.users,
  }) : super(key: key);
  final User users;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            users.image!,
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        const VerticalSpacing(of: 10),
        Text(
          users.name!,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
