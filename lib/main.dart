import 'package:flutter/material.dart';
import 'package:sulhairah_2009106026/halaman1.dart';
import 'package:sulhairah_2009106026/halaman2.dart';
import 'package:sulhairah_2009106026/halaman3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => LandingPage(),
      '/dua': (context) => MainPage(),
      '/tiga': (context) => Halaman3(),
    },
  ));
}
