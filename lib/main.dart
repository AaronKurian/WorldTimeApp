import 'package:flutter/material.dart';
import 'package:fourthapp/pages/home.dart';
import 'package:fourthapp/pages/choose_location.dart';
import 'package:fourthapp/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
