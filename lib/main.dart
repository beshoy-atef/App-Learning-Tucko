import 'package:flutter/material.dart';
import 'package:tucko3/screens/home_page.dart';

void main() {
  runApp(const TuckoApp());
}

class TuckoApp extends StatelessWidget {
  const TuckoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
