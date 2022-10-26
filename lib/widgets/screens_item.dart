import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../models/Itme_class.dart';

class ScreensItem extends StatelessWidget {
  const ScreensItem(
      {super.key,
      required this.data,
      required this.soundtype,
      required this.color});
  final Item data;
  final String soundtype;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: const Color(0xffFDF6DA),
            child: Image.asset(data.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  data.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache audioCache =
                    AudioCache(prefix: 'assets/sounds/$soundtype/');
                audioCache.play(data.sound);
                // ignore: empty_catches
              } catch (ex) {}
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PharsesItem extends StatelessWidget {
  const PharsesItem(
      {super.key,
      required this.data,
      required this.soundtype,
      required this.color});
  final Item data;
  final String soundtype;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  data.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache audioCache =
                    AudioCache(prefix: 'assets/sounds/$soundtype/');
                audioCache.play(data.sound);
                // ignore: empty_catches
              } catch (ex) {}
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
