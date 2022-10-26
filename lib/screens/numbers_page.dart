// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:tucko3/widgets/screens_item.dart';

import '../models/Itme_class.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({
    super.key,
  });

  List<Item> numbersData = [
    const Item(
      enName: 'One',
      jpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'number_one_sound.mp3',
    ),
    const Item(
      enName: 'Two',
      jpName: 'Ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'number_two_sound.mp3',
    ),
    const Item(
      enName: 'three',
      jpName: 'San',
      image: 'assets/images/numbers/number_three.png',
      sound: 'number_three_sound.mp3',
    ),
    const Item(
      enName: 'four',
      jpName: 'Shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'number_four_sound.mp3',
    ),
    const Item(
      enName: 'five',
      jpName: 'Go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_five_sound.mp3',
    ),
    const Item(
      enName: 'six',
      jpName: 'Roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'number_six_sound.mp3',
    ),
    const Item(
      enName: 'seven',
      jpName: 'Sebun',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'number_seven_sound.mp3',
    ),
    const Item(
      enName: 'egiht',
      jpName: 'Hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'number_eight_sound.mp3',
    ),
    const Item(
      enName: 'nine',
      jpName: 'Kyu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'number_nine_sound.mp3',
    ),
    const Item(
      enName: 'ten',
      jpName: 'Ju',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers page'),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: numbersData.length,
          itemBuilder: ((context, index) {
            return ScreensItem(
              data: numbersData[index],
              soundtype: 'numbers',
              color: Colors.orange,
            );
          }),
        ));
  }
}
