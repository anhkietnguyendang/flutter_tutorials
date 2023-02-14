
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorials/utils/functions.dart';

import 'package:flutter_tutorials/utils/routes.dart';
//--------------------------------------------------

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<double> buttonSize = [];
  //--------------------------------------------------
  // region Override functions
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
  }

  @override
  Widget build(BuildContext context) {
    buttonSize = getButtonSize(getScreenSize(context)[0]); // screenSize[width, height]
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IntroBox(),
              const Padding(padding: EdgeInsets.only(bottom: 20),),
              FunctionButton('Sensors', sensorScene),
              const Padding(padding: EdgeInsets.only(bottom: 20),),
              FunctionButton('HTTP server', (){}),
              const Padding(padding: EdgeInsets.only(bottom: 20),),
              FunctionButton('Text recognition', (){}),
              // Padding(padding: EdgeInsets.only(bottom: 20),),
              // FunctionButton('About', aboutScene),
              //Padding(padding: EdgeInsets.only(bottom: 20),),
              //FunctionButton('Exit', exitGame),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  // endregion Override functions
  //--------------------------------------------------
  // region Local functions
  //Get the size of the buttons
  List<double> getButtonSize(double screenWidth){
    List<double> size = [200, 50];

    double width = (screenWidth / 2);
    if(width > 300){
      size[0] = 300;
    }
    else if(width < 100){
      size[0] = 100;
    }
    else {
      size[0] = width;
    }

    return size;
  }

  void sensorScene(){
    Navigator.of(context).push(
        routeSensorPage(const Offset(1.0, 0.0), Offset.zero));
  }

  // endregion Local functions
  //--------------------------------------------------
  // region Local widgets
  // Intro label
  Widget IntroBox() {
    return const Text("Let's have fun",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        shadows: [Shadow(color: Colors.green, offset: Offset(1.0, 1.0))],
      ),
    );
  }

  // Function button
  Widget FunctionButton(String buttonText, Function onPressed){
    final double buttonWidth = buttonSize[0];
    final double buttonHeight = buttonSize[1];
    final double radius = buttonHeight/2;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          primary: Colors.blue
      ),
      child: Container(
        width: buttonWidth, height: buttonHeight,
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 25),
          maxLines: 1,
        ),
      ),
      onPressed: (){onPressed();},
    );
  }
// endregion Local widgets
//--------------------------------------------------
}
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
