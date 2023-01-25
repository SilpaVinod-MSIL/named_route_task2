import 'package:flutter/material.dart';
import 'package:named_route_task2/screens/secondscreen.dart';

import 'screens/firstscreen.dart';
void main() =>  runApp( MaterialApp(
  home:FirstScreen(),
  routes: {
    SecondScreen.routeName: (ctx) => SecondScreen(),
  },
));


