import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GitNews(),
    );
  }
}

class GitNews extends StatefulWidget {
  GitNews({Key? key}) : super(key: key);

  @override
  _GitNewsState createState() => _GitNewsState();
}

class _GitNewsState extends State<GitNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("By DZ-TM071"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LiquidCustomProgressIndicator(
                direction: Axis.vertical,
                value: 0.2,
                shapePath: _buildBoatPath(),
              ),
              const SizedBox(
                height: 20,
              ),
              LiquidCustomProgressIndicator(
                direction: Axis.horizontal,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation(Colors.red),
                shapePath: _buildSpeechBubblePath(),
              ),
              const SizedBox(height: 20),
              _AnimatedLiquidCustomProgressIndicator(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  backgroundColor: Colors.black,
                  valueColor: const AlwaysStoppedAnimation(Colors.red),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation(Colors.pink),
                  borderColor: Colors.red,
                  borderWidth: 5.0,
                  direction: Axis.vertical,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation(Colors.grey),
                  borderColor: Colors.blue,
                  borderWidth: 5.0,
                  center: const Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  backgroundColor: Colors.lightGreen,
                  valueColor: const AlwaysStoppedAnimation(Colors.blueGrey),
                  direction: Axis.vertical,
                ),
              ),
            ],
          ),
        ));
  }

  Path _buildBoatPath() {
    return Path()
      ..moveTo(15, 120)
      ..lineTo(0, 85)
      ..lineTo(50, 85)
      ..lineTo(50, 0)
      ..lineTo(105, 80)
      ..lineTo(60, 80)
      ..lineTo(60, 85)
      ..lineTo(120, 85)
      ..lineTo(105, 120)
      ..close();
  }

  Path _buildSpeechBubblePath() {
    return Path()
      ..moveTo(50, 0)
      ..quadraticBezierTo(0, 0, 0, 37.5)
      ..quadraticBezierTo(0, 75, 25, 75)
      ..quadraticBezierTo(25, 95, 5, 95)
      ..quadraticBezierTo(35, 95, 40, 75)
      ..quadraticBezierTo(100, 75, 100, 37.5)
      ..quadraticBezierTo(100, 0, 50, 0)
      ..close();
  }
}


