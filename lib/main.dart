import 'package:flutter/material.dart';

import 'components/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF8FAFB),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            MyCard(
              title: 'Uicons for Figma',
              imgLink:
                  'https://media.flaticon.com/dist/min/img/whats-new/uicons-figma.jpg',
            ),
            MyCard(
              title: 'Search available in Author area',
              imgLink:
                  'https://media.flaticon.com/dist/min/img/whats-new/author-searcher.jpg',
            ),
            MyCard(
              title: 'Filter improvements',
              imgLink:
                  'https://media.flaticon.com/dist/min/img/whats-new/filter-improvements.jpg',
            ),
          ],
        )),
      ),
    );
  }
}
