import 'package:flutter/material.dart';
import 'package:flutter_navbar/Page/ConfirmPage.dart';
import 'package:flutter_navbar/Page/HistoryPage.dart';
import 'package:flutter_navbar/Page/LocationPage.dart';
import 'package:flutter_navbar/Page/ProfilePage.dart';
import 'package:flutter_navbar/Page/StatusPage.dart';
import 'package:flutter_navbar/Page/card.dart';
import 'package:flutter_navbar/Page/confirmPage.dart';
import 'package:flutter_navbar/Page/test.dart';
import 'package:flutter_navbar/mainnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainNavigation(),
    );
  }
}
