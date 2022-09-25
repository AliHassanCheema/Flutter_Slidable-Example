import 'package:flutter/material.dart';

import 'slidable/slidable_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_Slidable Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SlidableScreen(),
    );
  }
}
