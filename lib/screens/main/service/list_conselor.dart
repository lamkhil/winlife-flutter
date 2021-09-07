import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/controller/main_controller.dart';
import 'package:winlife/data/model/conselor_model.dart';
import 'package:winlife/routes/app_routes.dart';
import 'package:winlife/screens/main/service/detail_conselor.dart';

class ListConselor extends StatefulWidget {
  @override
  _ListConselorState createState() => _ListConselorState();
}

class _ListConselorState extends State<ListConselor> {
  var response;
  bool loaded = false;

  Future<void> _refresh() async {
    await _mainController.getAllConselor();
  }

  void consulNow(type, data) {
    Get.toNamed(Routes.DETAILORDER, arguments: {'type': type, 'data': data});
  }

  final MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List Counselor",
            style: TextStyle(fontFamily: 'neosansbold'),
          ),
        ),
        body: SafeArea(
            child: RefreshIndicator(
          onRefresh: _refresh,
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Obx(() {
                return ListView.builder(
                    itemCount: _mainController.listConselor.length,
                    itemBuilder: (context, i) {
                      return exploreview(
                          context, _mainController.listConselor[i]);
                    });
              })),
        )));
  }

  Widget exploreview(BuildContext context, Conselor data) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.8,
                  blurRadius: 8,
                  offset: Offset(2, 6), // changes position of shadow
                ),
              ],
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.only(left: 40, top: 15, right: 10),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  margin: const EdgeInsets.only(left: 70),
                  width: double.infinity,
                  height: 90,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: "1" == "1" ? Colors.green : Colors.grey,
                              ),
                            ),
                            Text(data.name,
                                style: TextStyle(
                                    fontFamily: 'neosansbold', fontSize: 18)),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(data.email),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Container(
                                  child: RatingBar.builder(
                                    initialRating: 3.5,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0.3),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ],
                            )),
                      ])),
              Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Start With".tr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'neosansbold',
                                    color: Colors.black54,
                                  ),
                                ),
                              ])),
                      Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  consulNow("Chat", data);
                                },
                                child: Container(
                                  height: 35,
                                  child: Icon(Icons.chat_bubble,
                                      color: Colors.grey[500], size: 20),
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  consulNow("Phone", data);
                                },
                                child: Container(
                                  height: 35,
                                  child: Icon(FontAwesomeIcons.phone,
                                      color: Colors.grey[500], size: 20),
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  consulNow("Video Call", data);
                                },
                                child: Container(
                                  height: 35,
                                  child: Icon(FontAwesomeIcons.video,
                                      color: Colors.grey[500], size: 20),
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  consulNow("Meeting", data);
                                },
                                child: Container(
                                  height: 35,
                                  child: Icon(FontAwesomeIcons.handshake,
                                      color: Colors.grey[500], size: 20),
                                ),
                              )),
                            ],
                          ))
                    ],
                  ))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, left: 10, bottom: 10),
          width: 85,
          height: 85,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(2, 6), // changes position of shadow
                ),
              ],
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: Center(
            child: OpenContainer(
              closedBuilder: (_, openContainer) {
                return Image.network(
                  "http://web-test.winlife.id:80/uploads/konselor/20210905203938-2021-09-05konselor203931.jpg",
                );
              },
              openColor: Colors.white,
              closedElevation: 10.0,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              closedColor: Colors.white,
              openBuilder: (_, closeContainer) {
                return new DetailConselor(data.id, "widget.id_layanan");
              },
            ),
          ),
        ),
      ],
    );
  }
}
