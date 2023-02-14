import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorials/const/constant.dart';
import 'package:flutter_tutorials/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tutorials',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AppBegins(),
    );
  }
}

class AppBegins extends StatefulWidget {
  const AppBegins({Key? key}) : super(key: key);

  @override
  State<AppBegins> createState() => _AppBeginsState();
}

class _AppBeginsState extends State<AppBegins> {
  // region Final Constants

  // endregion Final Constants
  //--------------------------------------------------
  // region Variables

  // endregion Variables
  //--------------------------------------------------
  // region Override methods
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      /*bool loadOK = await loadData();
      if(loadOK){
      }*/
      Timer(const Duration(milliseconds: 500), () => callHomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
  // endregion Override methods
  //--------------------------------------------------
  // region Action Functions
  Future<bool> loadData() async {
    bool loadOK = false;
    // Load user data
    try{
      loadOK = true;
    }catch(e){
      loadOK = false;
    }
    return loadOK;
  }

  Future<void> loadDefault() async{
    try{

    }catch(e){
      throw Future.error('DefaultFile does not exist');
    }
  }

  Future<void> loadUserFile() async{
    try{
    }
    catch(e){
      throw Future.error('UserFile does not exist');
    }
  }

  void callHomePage(){
    Navigator.of(context).push(routeHomePage());
  }
// endregion Action Functions
//--------------------------------------------------
// region Local widgets

// endregion Local widgets
//--------------------------------------------------
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: const [
          Center(
            child: Image(
              image: AssetImage(KIKI_IDEAS_LOGO),
              width: 200,
            ),
          ),
          Center(
            child: SizedBox(
              width: 50, height: 50,
              child: CircularProgressIndicator(
                color: Colors.grey, strokeWidth: 3,
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //--------------------------------------------------
  // region Action Functions

// endregion Action Functions
}
