import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(const homePage());
}


class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0c1335)
      ),
      home: InputPage(),
    );
  }
}



