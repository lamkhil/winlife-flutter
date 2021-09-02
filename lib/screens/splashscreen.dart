import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:winlife/controller/auth_controller.dart';
import 'package:winlife/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final storage = GetStorage();
  AuthController _authController = Get.find();
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigatePage);
  }

  void navigatePage() async {
    var user = storage.read('user');
    if (user == null) {
      Get.offNamed(Routes.LANDING);
    } else {
      await _authController.refreshToken();
      Get.offNamed(Routes.MAIN);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(
                      tag: "assets/logo-small.png",
                      child: Image(
                          image: AssetImage("assets/logo-ls.png"),
                          fit: BoxFit.contain,
                          height: 150,
                          width: 150)),
                ],
              ),
            ),
            Positioned(
                child: new Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Text("V 1.0",
                          style: TextStyle(
                              fontFamily: "MuliLight",
                              fontSize: 11,
                              color: Colors.white)),
                    )))
          ],
        ));
  }
}
