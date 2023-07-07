import 'package:flutter/material.dart';
import 'package:om/calculator.dart';
import 'package:om/list%201.dart';
import 'package:om/list%202.dart';
import 'package:om/shalu.dart';
import 'package:om/white.dart';

import 'api.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calculator',
      theme: ThemeData(
      ),
      home:list2(),
    );
  }
}

