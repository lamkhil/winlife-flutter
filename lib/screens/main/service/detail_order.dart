import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/controller/main_controller.dart';
import 'package:winlife/data/model/duration_model.dart';
import 'package:winlife/routes/app_routes.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({Key? key}) : super(key: key);

  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  TextEditingController co_problem = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = '';
  bool showbody = true;
  bool showfilter = false;
  var response;
  var selected = 0.obs;
  var args = Get.arguments;
  @override
  void initState() {
    super.initState();
  }

  bool loaded = false;

  final MainController _mainController = Get.find();

  // ===========================VIEW===================================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Select Time",
            style: TextStyle(fontFamily: 'neosansbold'),
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: Column(
                    children: <Widget>[
                      //================================================

                      Container(
                          child: Text(
                        "Silahkan pilih waktu konsultasi yang Anda butuhkan ",
                        style: TextStyle(fontFamily: 'mulibold', fontSize: 18),
                      )),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 15),
                          child: Text("Please Input Your Problem :")),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.8,
                                blurRadius: 5,
                                offset:
                                    Offset(2, 5), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 15),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          margin: const EdgeInsets.only(top: 1),
                          child: TextFormField(
                            controller: co_problem,
                            keyboardType: TextInputType.multiline,
                            autofocus: true,
                            minLines: 1,
                            maxLines: 4,
                            decoration: const InputDecoration(
                              hintText: 'Explain your problem to conselor',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 15),
                          child: Text("Select Time Consultation :")),
                      Obx(() {
                        if (_mainController.listDuration.isEmpty) {
                          _mainController.getAllDuration();
                          return Center(
                            child: SpinKitFadingCircle(
                              color: mainColor,
                            ),
                          );
                        } else {
                          return ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: _mainController.listDuration.length,
                              itemBuilder: (context, i) => selectType(
                                  _mainController.listDuration[i], i));
                        }
                      }),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  child: Text(
                                    "Type Konsultasi ",
                                    style: TextStyle(
                                        fontFamily: 'neosansbold',
                                        fontSize: 13),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    args['type'],
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'muli', fontSize: 13),
                                  ),
                                ),
                              ],
                            )), //================================================

                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  child: Text(
                                    "Waktu Konsultasi ",
                                    style: TextStyle(
                                        fontFamily: 'neosansbold',
                                        fontSize: 13),
                                  ),
                                ),
                                FittedBox(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.clock,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Obx(
                                        () => Text(
                                          "${_mainController.listDuration[selected.value].time} Mins",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'muli', fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                "Harga",
                                style: TextStyle(
                                    fontFamily: 'neosansbold', fontSize: 18),
                              ),
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "IDR ",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'mulibold', fontSize: 15),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Rp. 90000",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: 'muli', fontSize: 15),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )),
                        //================================================
                        //
                        Container(
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
                                    child: InkWell(
                                  onTap: () {
                                    switch ((args['type'] as String)
                                        .toLowerCase()) {
                                      case 'chat':
                                        Get.offNamedUntil(Routes.CHATSCREEN,
                                            ModalRoute.withName(Routes.MAIN));
                                        break;
                                      case 'phone':
                                        Get.offNamedUntil(Routes.CALLSCREEN,
                                            ModalRoute.withName(Routes.MAIN));
                                        break;
                                      default:
                                        Navigator.pop(context);
                                    }
                                  },
                                  child: Text(
                                    "Send Request Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'neosansbold',
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                )),
                              ],
                            ))
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }

  Widget selectType(DurationItem data, int i) {
    return InkWell(
        onTap: () {
          selected.value = i;
        },
        child: Obx(
          () => Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0.8,
                      blurRadius: 5,
                      offset: Offset(2, 5), // changes position of shadow
                    ),
                  ],
                  color: selected.value == i ? Colors.green : Colors.white,
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
                      data.time + "mins",
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
              )),
        ));
  }
}
