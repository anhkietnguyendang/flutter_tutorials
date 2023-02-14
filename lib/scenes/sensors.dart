import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_tutorials/utils/snake.dart';
import '../utils/routes.dart';

class Sensors extends StatefulWidget {
  const Sensors({Key? key}) : super(key: key);

  @override
  State<Sensors> createState() => _SensorsState();
}

class _SensorsState extends State<Sensors> {
  // region variables
    static const int _snakeRows = 20;
    static const int _snakeColumns = 20;
    static const double _snakeCellSize = 10.0;

    List<double>? _accelerometerValues;
    List<double>? _userAccelerometerValues;
    List<double>? _gyroscopeValues;
    List<double>? _magnetometerValues;
    final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  // endregion variables
  //--------------------------------------------------
  // region Override functions
    @override
    Widget build(BuildContext context) {
      final accelerometer =
      _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
      final gyroscope =
      _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
      final userAccelerometer = _userAccelerometerValues
          ?.map((double v) => v.toStringAsFixed(1))
          .toList();
      final magnetometer =
      _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();

      return Scaffold(
        appBar: AppBar(
          title: const Text('sensor_plus package'),
        ),
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              snakeWindow(),
              accelerometerValue(accelerometer.toString()),
              userAccelerometerValue(userAccelerometer.toString()),
              gyroScopeValue(gyroscope.toString()),
              magnetometerValue(magnetometer.toString()),
            ],
          ),
        ),
      );
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

      for (final subscription in _streamSubscriptions) {
        subscription.cancel();
      }
    }

    @override
    void initState() {
      super.initState();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]);

      initSensorSubscriptions();
    }
  // endregion Override functions
  //--------------------------------------------------
  // region Local widgets
    Widget snakeWindow() {
      return Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.black38),
          ),
          child: SizedBox(
            height: _snakeRows * _snakeCellSize,
            width: _snakeColumns * _snakeCellSize,
            child: Snake(
              rows: _snakeRows,
              columns: _snakeColumns,
              cellSize: _snakeCellSize,
            ),
          ),
        ),
      );
    }

    Widget accelerometerValue(String accelerometer) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Accelerometer: $accelerometer'),
          ],
        ),
      );
    }

    Widget userAccelerometerValue(String userAccelerometer) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('UserAccelerometer: $userAccelerometer'),
          ],
        ),
      );
    }

    Widget gyroScopeValue(String gyroscope) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Gyroscope: $gyroscope'),
          ],
        ),
      );
    }

    Widget magnetometerValue(String magnetometer) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Magnetometer: $magnetometer'),
          ],
        ),
      );
    }
  // endregion Local widgets
  //--------------------------------------------------
  // region Local functions
    void mainMenuScene(){
      Navigator.of(context).push(routeHomePage());
    }

    void initSensorSubscriptions(){
      listenToAccelerometer();
      listenToGyroscope();
      listenToUserAccelerometer();
      listenToMagnetometer();
    }

    void listenToAccelerometer() {
      _streamSubscriptions.add(
        accelerometerEvents.listen(
              (AccelerometerEvent event) {
            setState(() {
              _accelerometerValues = <double>[event.x, event.y, event.z];
            });
          },
        ),
      );
    }

    void listenToUserAccelerometer() {
      _streamSubscriptions.add(
        userAccelerometerEvents.listen(
              (UserAccelerometerEvent event) {
            setState(() {
              _userAccelerometerValues = <double>[event.x, event.y, event.z];
            });
          },
        ),
      );
    }

    void listenToGyroscope() {
      _streamSubscriptions.add(
        gyroscopeEvents.listen(
              (GyroscopeEvent event) {
            setState(() {
              _gyroscopeValues = <double>[event.x, event.y, event.z];
            });
          },
        ),
      );
    }

    void listenToMagnetometer() {
      _streamSubscriptions.add(
        magnetometerEvents.listen(
              (MagnetometerEvent event) {
            setState(() {
              _magnetometerValues = <double>[event.x, event.y, event.z];
            });
          },
        ),
      );
    }




// endregion Local functions
}
