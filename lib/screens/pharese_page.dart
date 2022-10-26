// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:tucko3/widgets/screens_item.dart';

import '../models/Itme_class.dart';

class PharesePage extends StatelessWidget {
  PharesePage({super.key});
  List<Item> pharsesData = [
    const Item(
      enName: 'are you coming',
      jpName: 'Kimasu ka',
      sound: 'are_you_coming.wav',
    ),
    const Item(
      enName: 'dont forget to subscribe',
      jpName: 'Kōdoku suru koto o wasurenaide',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    const Item(
      enName: 'how are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      sound: 'how_are_you_feeling.wav',
    ),
    const Item(
      enName: 'i love anime',
      jpName: 'Watashi wa anime ga daisukidesu',
      sound: 'i_love_anime.wav',
    ),
    const Item(
      enName: 'i love programming',
      jpName: 'Watashi wa puroguramingu ga ',
      sound: 'i_love_programming.wav',
    ),
    const Item(
      enName: 'programming is easy',
      jpName: 'Puroguramingu wa kantandesu',
      sound: 'programming_is_easy.wav',
    ),
    const Item(
      enName: 'what is your name',
      jpName: 'Namae wa nandesu ka',
      sound: 'what_is_your_name.wav',
    ),
    const Item(
      enName: 'where are you going',
      jpName: 'Doko ni iku no',
      sound: 'where_are_you_going.wav',
    ),
    const Item(
      enName: 'yes im coming',
      jpName: 'Hai, kimasu',
      sound: 'yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff47A5CB),
        title: const Text('Pharses Page'),
      ),
      body: ListView.builder(
        itemCount: pharsesData.length,
        itemBuilder: ((context, index) {
          return PharsesItem(
            data: pharsesData[index],
            soundtype: 'phrases',
            color: const Color(0xff47A5CB),
          );
        }),
      ),
    );
  }
}
