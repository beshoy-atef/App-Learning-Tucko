// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:tucko3/widgets/screens_item.dart';

import '../models/Itme_class.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  List<Item> colorsData = [
    const Item(
      enName: 'black',
      jpName: 'Kuro',
      image: 'assets/images/colors/color_black.png',
      sound: 'black.wav',
    ),
    const Item(
      enName: 'brown',
      jpName: 'Chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'brown.wav',
    ),
    const Item(
      enName: 'dusty yellow',
      jpName: 'Hokori ppoi kiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'dusty yellow.wav',
    ),
    const Item(
      enName: 'Gray',
      jpName: 'Gurē',
      image: 'assets/images/colors/color_gray.png',
      sound: 'gray.wav',
    ),
    const Item(
      enName: 'green',
      jpName: 'Midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'green.wav',
    ),
    const Item(
      enName: 'red',
      jpName: 'Aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'red.wav',
    ),
    const Item(
      enName: 'white',
      jpName: 'Shiroi',
      image: 'assets/images/colors/color_white.png',
      sound: 'white.wav',
    ),
    const Item(
      enName: 'yellow',
      jpName: 'Kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7D3FA2),
        title: const Text('Colors Page'),
      ),
      body: ListView.builder(
        itemCount: colorsData.length,
        itemBuilder: ((context, index) {
          return ScreensItem(
            data: colorsData[index],
            soundtype: 'colors',
            color: const Color(0xff7D3FA2),
          );
        }),
      ),
    );
  }
}
