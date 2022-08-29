import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_travelers_app/constants.dart';
import 'package:flutter_travelers_app/screens/events/events_screen.dart';
import 'package:flutter_travelers_app/screens/home/home_screen.dart';
import 'package:flutter_travelers_app/size_config.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/icons/calendar.svg",
                title: "Events",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventsScreen(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/chat.svg",
                title: "Chat",
                isActive: true,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/friendship.svg",
                title: "Friends",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  NavItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);
  final String icon, title;
  late bool isActive;
  final GestureTapCallback press;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [if (widget.isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              widget.icon,
              height: 28,
              color: kTextColor,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
