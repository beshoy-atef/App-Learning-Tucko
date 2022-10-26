import 'package:flutter/material.dart';
import 'package:tucko3/screens/colors_page.dart';
import 'package:tucko3/screens/family_members_page.dart';

import 'package:tucko3/screens/numbers_page.dart';
import 'package:tucko3/screens/pharese_page.dart';
import 'package:tucko3/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFDF6DA),
        appBar: AppBar(
          title: const Text('Tucko'),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomePageBody(
                title: 'Numbers',
                image: 'assets/images/numbers/number_ten.png',
                color: Colors.orange,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }),
                  );
                },
              ),
              HomePageBody(
                  title: 'Family Members',
                  image: 'assets/images/family_members/family_father.png',
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return FamilyMebersPage();
                        }),
                      ),
                    );
                  }),
              HomePageBody(
                  title: 'Colors',
                  image: 'assets/images/colors/color_red.png',
                  color: const Color(0xff7D3FA2),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return ColorsPage();
                        }),
                      ),
                    );
                  }),
              HomePageBody(
                  title: 'Pharese',
                  image: 'assets/images/colors/color_white.png',
                  color: const Color(0xff47A5CB),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return PharesePage();
                        }),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
