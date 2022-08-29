// ignore_for_file: file_names

import 'package:flutter_travelers_app/models/Users.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> users;

  TravelSpot({
    required this.users,
    required this.name,
    required this.image,
    required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Red Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Megical World",
    image: "assets/images/Magical_World.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Red Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];
