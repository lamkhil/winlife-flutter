import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/controller/auth_controller.dart';
import 'package:winlife/routes/app_routes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  AuthController _authController = Get.find();
  @override
  Widget build(BuildContext context) {
    var ls = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        child: new Image.asset("assets/logo-ls.png"),
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 0, right: 10),
                  width: double.infinity,
                  child: Text(
                    "Welcome To WinLife",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: "NeoSansBold", fontSize: 25),
                  )),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 0, right: 10),
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    "We help you to find solution for yout problem,\nbecause you are valueable & more than winner!",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: "MuliLight", fontSize: 14),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        margin: const EdgeInsets.only(top: 10, right: 4),
                        child: TextButton(
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: 'neosansbold')),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: BorderSide(color: Colors.grey)))),
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            }),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        margin: const EdgeInsets.only(top: 10, right: 4),
                        child: TextButton(
                            child: Text("Register",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'neosansbold')),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(mainColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: BorderSide(color: mainColor)))),
                            onPressed: () {
                              Get.toNamed(Routes.REGISTER,
                                  arguments: "email@email.com");
                            }),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey,
                    )),
                    Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      child: Text(
                        "or continue with",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(top: 10, right: 4),
                child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Icon(
                            FontAwesomeIcons.facebookSquare,
                            size: 20,
                          ),
                        ),
                        Text("Continue With Facebook",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'mulibold')),
                      ],
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color?>(Colors.blue[900]),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.grey)))),
                    onPressed: () {
                      _authController.signInWithFacebook(context);
                    }),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(top: 10, right: 4),
                child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Icon(
                            FontAwesomeIcons.google,
                            size: 20,
                          ),
                        ),
                        Text("Continue With Google",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'mulibold')),
                      ],
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.grey)))),
                    onPressed: () {
                      _authController.signInWithGoogle(context);
                    }),
              ),
              Container(
                padding: const EdgeInsets.only(
                    right: 0, left: 0, top: 20, bottom: 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                                right: 10, left: 0, top: 0, bottom: 5),
                            child: Text(
                              'By Logging in or Registering, you agree to WinLife',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontFamily: 'muli', fontSize: 14),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   new MaterialPageRoute(
                                    //       builder: (context) => new HtmlView(
                                    //           "Syarat ketentuan", "ketentuanlayanan")),
                                    // );
                                  },
                                  child: Text(
                                    'Terms of Service',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'MuliBold',
                                        fontSize: 14,
                                        color: mainColor),
                                  ),
                                ),
                                Text(
                                  'And ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'MuliLight', fontSize: 14),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   new MaterialPageRoute(
                                    //       builder: (context) => new HtmlView(
                                    //           "Kebijakan Privasi", "kebijakanprivasi")),
                                    // );
                                  },
                                  child: Text(
                                    'Privacy Policy ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'MuliBold',
                                        fontSize: 14,
                                        color: mainColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
