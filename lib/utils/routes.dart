import 'package:flutter/material.dart';
import 'package:flutter_tutorials/utils/functions.dart';
import '../scenes/home.dart';
import '../scenes/sensors.dart';

// Home scene
Route routeHomePage() {
  var transitionEffect = myFadeTransitionBuilder();
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Home(),
    transitionsBuilder: transitionEffect,
  );
}

// Sensor Scene
Route routeSensorPage(Offset begin, Offset end){
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Sensors(),
      transitionsBuilder: mySlideTransitionBuilder(begin, end)
  );
}

