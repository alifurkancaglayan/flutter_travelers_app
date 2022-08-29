import 'package:flutter/material.dart';
import 'package:flutter_travelers_app/components/app_bar.dart';
import 'package:flutter_travelers_app/components/custom_nav_bar.dart';
import 'package:flutter_travelers_app/screens/events/components/body.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "New Events",
      ),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
