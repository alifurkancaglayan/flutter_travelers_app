import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/constants.dart';

AppBar buildAppBar({bool isTransparent = false, String? title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: kIconColor,
      ),
    ),
    title: Container(
      alignment: Alignment.center,
      child: Text(
        title == null ? "" : title,
        style: const TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(
          child: Image.asset("assets/images/profile.png"),
        ),
      ),
    ],
  );
}
