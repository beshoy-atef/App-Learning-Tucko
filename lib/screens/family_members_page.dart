// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:tucko3/widgets/screens_item.dart';

import '../models/Itme_class.dart';

class FamilyMebersPage extends StatelessWidget {
  FamilyMebersPage({super.key});
  List<Item> familyData = [
    const Item(
      enName: 'Father',
      jpName: 'chichioya',
      image: 'assets/images/family_members/family_father.png',
      sound: 'father.wav',
    ),
    const Item(
      enName: 'daughter',
      jpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'daughter.wav',
    ),
    const Item(
      enName: 'Grand Father',
      jpName: 'OJisan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'grand father.wav',
    ),
    const Item(
      enName: 'Mother',
      jpName: 'Hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'mother.wav',
    ),
    const Item(
      enName: 'Son',
      jpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'son.wav',
    ),
    const Item(
      enName: 'Grand mother',
      jpName: 'Sobo',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'grand mother.wav',
    ),
    const Item(
      enName: 'Older brother',
      jpName: 'Nisan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'older bother.wav',
    ),
    const Item(
      enName: 'Older Sister',
      jpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'older sister.wav',
    ),
    const Item(
      enName: 'younger brother',
      jpName: 'Otōto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'younger brohter.wav',
    ),
    const Item(
      enName: 'younger sister',
      jpName: 'Imōto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Family Members Page'),
      ),
      body: ListView.builder(
        itemCount: familyData.length,
        itemBuilder: ((context, index) {
          return ScreensItem(
            data: familyData[index],
            soundtype: 'family_members',
            color: Colors.green,
          );
        }),
      ),
    );
  }
}
