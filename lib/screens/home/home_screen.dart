
import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/components/app_bar.dart';
import 'package:flutter_travelers_app/components/custom_nav_bar.dart';
import 'package:flutter_travelers_app/screens/home/components/body.dart';
import 'package:flutter_travelers_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
