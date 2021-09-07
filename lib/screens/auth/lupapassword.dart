import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:winlife/constant/color.dart';
import 'package:get/get.dart';

class LupaPasswordPage extends StatefulWidget {
  const LupaPasswordPage({Key? key}) : super(key: key);

  @override
  _LupaPasswordPageState createState() => _LupaPasswordPageState();
}

class _LupaPasswordPageState extends State<LupaPasswordPage> {
  TextEditingController co_email = new TextEditingController();
  TextEditingController co_code = new TextEditingController();

  bool formcode = false;

  @override
  Widget build(BuildContext context) {
    var ls = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: formcode
            ? Container(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Icon(
                                FontAwesomeIcons.arrowLeft,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        width: double.infinity,
                        child: Text(
                          "input code".tr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: "NeoSansBold", fontSize: 25),
                        )),
                    Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Text(
                          "enter email".tr+"\nsend reset".tr,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontFamily: "MuliLight", fontSize: 12),
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 35),
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        width: double.infinity,
                        child: Text(
                          "CODE ".tr,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontFamily: "mulilight", fontSize: 12),
                        )),
                    Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 0),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.only(left: 0),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                controller: co_code,
                                textAlign: TextAlign.center,
                                maxLength: 6,
                                decoration: const InputDecoration(
                                  hintText: 'xxxxxx',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'enter text'.tr;
                                  }
                                  return null;
                                },
                              ),
                            ))
                          ],
                        )),
                    Center(
                      child: Container(
                          width: double.infinity,
                          height: 15 * ls,
                          margin: const EdgeInsets.only(top: 30),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.0),
                            child: Material(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(5),
                              shadowColor: mainColor,
                              elevation: 5.0,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 0.0,
                                minWidth: 200.0,
                                height: 50.0,
                                onPressed: () {
                                  //_CheckCode();
                                },
                                color: mainColor,
                                child: Text('CONTINUE'.tr,
                                    style: TextStyle(
                                        fontSize: 5 * ls,
                                        color: Colors.white,
                                        fontFamily: 'mulibold')),
                              ),
                            ),
                          )),
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 15 * ls,
                        margin: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'find password'.tr,
                                  style: TextStyle(
                                      fontSize: 5 * ls,
                                      color: Colors.grey,
                                      fontFamily: 'muli'),
                                ),
                                Text(
                                  'Login Here'.tr,
                                  style: TextStyle(
                                      fontSize: 5 * ls,
                                      color: mainColor,
                                      fontFamily: 'mulibold'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Icon(
                                FontAwesomeIcons.arrowLeft,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                  'Forgot your password'.tr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "NeoSansBold", fontSize: 25),
                              )),
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Text(
                          'enter email and send reset'.tr,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontFamily: "MuliLight", fontSize: 12),
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 35),
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        width: double.infinity,
                        child: Text(
                          "EMAIL ADDRESS".tr,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontFamily: "mulilight", fontSize: 12),
                        )),
                    Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 0),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.only(left: 0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                controller: co_email,
                                decoration: const InputDecoration(
                                  hintText: 'youremail@gmail.com',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'enter text'.tr;
                                  }
                                  return null;
                                },
                              ),
                            ))
                          ],
                        )),
                    Center(
                      child: Container(
                          width: double.infinity,
                          height: 15 * ls,
                          margin: const EdgeInsets.only(top: 30),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.0),
                            child: Material(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(5),
                              shadowColor: mainColor,
                              elevation: 5.0,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 0.0,
                                minWidth: 200.0,
                                height: 50.0,
                                onPressed: () {
                                  //_RestLogin();
                                },
                                color: mainColor,
                                child: Text('CONTINUE'.tr,
                                    style: TextStyle(
                                        fontSize: 5 * ls,
                                        color: Colors.white,
                                        fontFamily: 'mulibold')),
                              ),
                            ),
                          )),
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 15 * ls,
                        margin: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'find password'.tr,
                                  style: TextStyle(
                                      fontSize: 5 * ls,
                                      color: Colors.grey,
                                      fontFamily: 'muli'),
                                ),
                                Text(
                                  'Login Here'.tr,
                                  style: TextStyle(
                                      fontSize: 5 * ls,
                                      color: mainColor,
                                      fontFamily: 'mulibold'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
