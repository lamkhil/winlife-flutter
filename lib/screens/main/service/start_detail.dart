import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:winlife/constant/color.dart';

class StartDetail extends StatefulWidget {
  const StartDetail({Key? key}) : super(key: key);

  @override
  _StartDetailState createState() => _StartDetailState();
}

class _StartDetailState extends State<StartDetail> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = '';
  bool showbody = true;
  bool showfilter = false;

  var response;
  bool loaded = false;

  Future<void> _refresh() async {}

  @override
  void initState() {
    super.initState();
  }

  Widget SelectType(icon, name, type) {
    return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.8,
                blurRadius: 5,
                offset: Offset(2, 5), // changes position of shadow
              ),
            ],
            color: Colors.white,
            border: Border.all(
              color: Colors.grey[200]!,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Expanded(
              child: Text(
                name,
                style: TextStyle(fontFamily: 'neosansbold', fontSize: 18),
              ),
            ),
            Container(
                child: Icon(
              FontAwesomeIcons.chevronRight,
              color: Colors.grey[400],
              size: 15,
            ))
          ],
        ));
  }

  // ===========================VIEW===================================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Detail Consultation",
            style: TextStyle(fontFamily: 'neosansbold', color: Colors.black),
          ),
          actions: <Widget>[
            // Padding(
            //     padding: EdgeInsets.only(right: 20.0),
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: Icon(FontAwesomeIcons.filter, size: 18),
            //     )),
          ],
        ),
        body: Container(
          child: Container(
            padding: const EdgeInsets.only(left: 25, top: 0, right: 25),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: _refresh,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text(
                                "Congratulations!",
                                style: TextStyle(
                                    fontFamily: 'neosansbold', fontSize: 24),
                              )),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "Your request has been send, please wait for confirmation to start conseling ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'muli', fontSize: 18),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 30, left: 10, bottom: 10),
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          offset: Offset(2,
                                              6), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18))),
                                  child: InkWell(
                                    child: Center(
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          child: Image.network(
                                            response['photo'].toString(),
                                          )),
                                    ),
                                    onTap: () {},
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 90,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            response['conselor_name']
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 18,
                                            )),
                                        Container(
                                          margin: const EdgeInsets.only(top: 4),
                                          child: Text(
                                            "DKI Jakarta, Kembangan ",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        // Container(
                                        //   margin: const EdgeInsets.only(top: 4),
                                        //   child: Text(
                                        //     "Rate: 4,5",
                                        //     textAlign: TextAlign.center,
                                        //   ),
                                        // ),
                                      ])),

                              // Container(
                              //     child: Row(
                              //   children: [
                              //     Expanded(
                              //       child: Text(
                              //         "Payment Status ",
                              //         style: TextStyle(
                              //             fontFamily: 'neosansbold',
                              //             fontSize: 15),
                              //       ),
                              //     ),
                              //     Expanded(
                              //       child: Text(
                              //         response['payment_status']
                              //             .toString(),
                              //         textAlign: TextAlign.right,
                              //         style: TextStyle(
                              //             fontFamily: 'muli',
                              //             fontSize: 15),
                              //       ),
                              //     ),
                              //   ],
                              // )),

                              //================================================
                              Container(
                                  child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Type Konsultasi ",
                                      style: TextStyle(
                                          fontFamily: 'neosansbold',
                                          fontSize: 15),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      response['type_consultaion'].toString(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: 'muli', fontSize: 15),
                                    ),
                                  ),
                                ],
                              )),

                              //================================================

                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Waktu Konsultasi ",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          response['timing'].toString(),
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'muli', fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Waktu Mulai ",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "--",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'muli', fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Waktu Selesai ",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "--",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'muli', fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  )),
                              //================================================
                              //
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey[500],
                              ),
                              Container(
                                  child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Harga",
                                      style: TextStyle(
                                          fontFamily: 'neosansbold',
                                          fontSize: 18),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "IDR ",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'mulibold',
                                              fontSize: 15),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            response['pricing'].toString(),
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontFamily: 'muli',
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                            ]),
                      ),
                    ),
                  ),
                ),
                //================================================

                //================================================
                //
                'a' == 'A'
                    ? InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.8,
                                  blurRadius: 5,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              color: mainColor,
                              border: Border.all(
                                color: mainColor,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(13),
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Complete Your Payment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'neosansbold',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.8,
                                  blurRadius: 5,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              color: mainColor,
                              border: Border.all(
                                color: mainColor,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(13),
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Mulai Konsultasi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'neosansbold',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ));
  }
}
