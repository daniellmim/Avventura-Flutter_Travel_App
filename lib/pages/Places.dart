import 'package:flutter/material.dart';

class PlaceInfo{
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.days,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.desc,
  });
}

List Places = [
  PlaceInfo(
    image:'https://i.pinimg.com/564x/fe/ab/db/feabdbd7ed3fd59843169e3f50a04dc5.jpg',
    location: 'Etihopia',
    name: 'Lalibela',
    distance: 50000,
    days: 12,
    desc: "Lalibela is a rural town in Ethiopia known for its 11 rock-hewn monolithic churches, carved from living rock and dating back to the 12th and 13th centuries. It is a UNESCO World Heritage site and a significant pilgrimage site for Ethiopian Orthodox Christians. ",

  ),
  PlaceInfo(
    image:'https://i.pinimg.com/564x/fe/ab/db/feabdbd7ed3fd59843169e3f50a04dc5.jpg',
    location: 'Etihopia',
    name: 'Addis Abeba',
    distance: 45000,
    days: 10,
    desc: 'Addis Ababa is a vibrant city with a rich cultural heritage, offering a variety of attractions such as museums, markets, and historic sites.',

  ),
];