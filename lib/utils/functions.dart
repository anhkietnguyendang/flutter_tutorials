import 'package:flutter/material.dart';
import 'package:flutter_tutorials/utils/widgets.dart';

// Convert color string to color
Color codeToColor(String rgbColor){
  // Color code format: '#rrggbb'
  int red = int.parse(rgbColor.substring(1,3), radix: 16);
  int green = int.parse(rgbColor.substring(3,5), radix: 16);
  int blue = int.parse(rgbColor.substring(5), radix: 16);

  return Color.fromRGBO(red, green, blue, 1.0);
}

// Slide Transition effect
dynamic mySlideTransitionBuilder(Offset begin, Offset end){
  return (context, animation, secondaryAnimation, child) {
    var curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  };
}
// Fade Transition effect
dynamic myFadeTransitionBuilder(){
  return (context, animation, secondaryAnimation, child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  };
}

List<double> getScreenSize(BuildContext context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return [width, height];
}

void showErrorMessage(BuildContext context, String message){
  print(message);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleErrorDialog(message: message);
    },
  );
}

/*
Future<void> onBackgroundMessage(RemoteMessage message) async{
  print('onBackground and not yet tapped');
  if(message.notification != null){
    print(message.notification?.body);
    print(message.notification?.title);
  }

  final dataTitle = message.data["dataTitle"];
  final dataBody = message.data["dataBody"];
  print("Data title: ${dataTitle.toString()}");
  print("Data body: ${dataBody.toString()}");
  return;
}*/
