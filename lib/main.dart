import 'package:flutter/material.dart';
import 'package:thirdapp/thirdapp1.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ThirdApp1());
  }
}
