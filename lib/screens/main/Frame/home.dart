import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/controller/main_controller.dart';
import 'package:winlife/routes/app_routes.dart';

class FrameHome extends StatefulWidget {
  const FrameHome({Key? key}) : super(key: key);

  @override
  _FrameHomeState createState() => _FrameHomeState();
}

class _FrameHomeState extends State<FrameHome> {
  final MainController _mainController = Get.find();

  SolidController _controller = SolidController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.all(15),
          child: Row(children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.grey[200],
                  ),
                  height: 40,
                  child: InkWell(
                      onTap: () {},
                      child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                              margin: const EdgeInsets.only(right: 10),
                            ),
                            Expanded(
                              child: Text(
                                "Find News, Service...",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: 'Muli'),
                              ),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center))),
            ),
            Container(
              child: Image.asset(
                "assets/icon_message.png",
                width: 30,
              ),
              margin: const EdgeInsets.only(right: 10, left: 20),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //=================================================================================
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))),
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7))),
                  child: Text(
                    "Selamat Datang Di WinLife",
                    style:
                        TextStyle(fontFamily: 'mulibold', color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Row(children: [
                    Container(
                        child: Image.asset("assets/logo-white.png"),
                        margin: const EdgeInsets.only(right: 10)),
                    Expanded(child: Container(height: 1, color: Colors.white))
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 20, top: 5, left: 10, right: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              margin: const EdgeInsets.only(right: 5, top: 0),
                              child: Row(children: [
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      width: 40,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: Image.asset(
                                        "assets/icon_banner_reward.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      width: 40,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: Image.asset(
                                        "assets/icon_banner_reward.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      width: 40,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: Image.asset(
                                        "assets/icon_banner_voucher.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              child: Row(children: [
                                Expanded(
                                  child: Center(
                                      child: Text('Akun',
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 11,
                                              color: Colors.white))),
                                ),
                                Expanded(
                                  child: Center(
                                      child: Text('News',
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 11,
                                              color: Colors.white))),
                                ),
                                Expanded(
                                  child: Center(
                                      child: Text('Reward',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 11,
                                              color: Colors.white))),
                                ),
                              ]),
                              margin: const EdgeInsets.only(right: 3, top: 5),
                            ),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15, left: 10),
                          width: 1,
                          height: 50,
                          color: Colors.white,
                        ),
                        Flexible(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Poin Saya",
                                    style: TextStyle(
                                        fontFamily: 'neosansbold',
                                        color: Colors.white),
                                  ),
                                  margin:
                                      const EdgeInsets.only(left: 3, bottom: 5),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 6, top: 6),
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "2,000",
                                                style: TextStyle(
                                                    fontFamily: 'neosansbold',
                                                    fontSize: 13),
                                              ),
                                              Text(
                                                " Poin",
                                                style: TextStyle(
                                                    fontFamily: 'mulilight',
                                                    fontSize: 11),
                                              )
                                            ],
                                          ),
                                          Icon(
                                            FontAwesomeIcons.caretRight,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 35,
                                      padding: const EdgeInsets.all(0),
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        "assets/icon_banner_point.png",
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ]),
                )
              ],
            ),
          ),
          //==========================================================================
          Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Our Service",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'neosansbold',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "konsultasi Kehidupan Anda",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'muli',
                      fontSize: 12,
                    ),
                  ),
                ),
              ])),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Obx(
              () {
                if (_mainController.listCategory.length == 0) {
                  return Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: SpinKitFadingCircle(
                        color: mainColor,
                      ),
                    ),
                  );
                } else {
                  return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, mainAxisSpacing: 20),
                      itemCount: _mainController.listCategory.length + 1,
                      itemBuilder: (context, i) {
                        if (i < 7 && i < _mainController.listCategory.length) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.LISTCONSELOR);
                            },
                            child: iconmenu(
                                context,
                                _mainController.listCategory[i].image,
                                "type",
                                _mainController.listCategory[i].name),
                          );
                        }
                        return InkWell(
                          onTap: () {
                            _controller.isOpened
                                ? _controller.hide()
                                : _controller.show();
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 0.8,
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
                                              Radius.circular(35))),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icon_menu8.png',
                                          width: 35,
                                        ),
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text("All",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mulibold',
                                          fontSize: 12)),
                                )
                              ]),
                        );
                      });
                }
              },
            ),
          ),

          //==========================================================================
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Promo",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'neosansbold',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "konsultasi Kehidupan Anda",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'muli',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "See All",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'mulibold',
                                fontSize: 12,
                                color: mainColor),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
          //==========================================================================

          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
            width: double.infinity,
            child: new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                promoview(),
                promoview(),
                promoview(),
                promoview(),
                promoview(),
              ]),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
            width: double.infinity,
            child: new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                promoview2("Married"),
                promoview2("Parenting"),
                promoview2("Family"),
                promoview2("Self"),
                promoview2("Bussines"),
                promoview2("Addictive"),
              ]),
            ),
          ),

          //=========================R=================================================
          //
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "News",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'neosansbold',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "See All",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'mulibold',
                                fontSize: 12,
                                color: mainColor),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
          //===================================================================================
          //
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
            width: double.infinity,
            child: new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                exploreview(context, "How using WinLife"),
                exploreview(context, "Konsultasi"),
                exploreview(context, "Chat"),
                exploreview(context, "Video"),
                exploreview(context, "Layanan"),
              ]),
            ),
          ),
        ]),
      ),
      bottomSheet: SolidBottomSheet(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
        controller: _controller,
        draggableBody: true,
        toggleVisibilityOnTap: true,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Container(
                  height: 0.5,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.8,
                                blurRadius: 8,
                                offset:
                                    Offset(2, 6), // changes position of shadow
                              ),
                            ],
                            color: Colors.grey[300],
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        margin: const EdgeInsets.all(2),
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.8,
                                blurRadius: 8,
                                offset:
                                    Offset(2, 6), // changes position of shadow
                              ),
                            ],
                            color: Colors.grey[300],
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        margin: const EdgeInsets.all(2),
                        width: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.white,
                ),
                Container(
                    width: double.infinity, child: buildIconFooter(context))
              ],
            ),
          ),
        ),
        headerBar: Container(),
      ),
    );
  }

  Widget iconmenu(context, assets, type, texticon) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 60,
                height: 60,
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
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                child: Center(
                  child: Image.network(
                    assets,
                    width: 35,
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(texticon,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'mulibold', fontSize: 12)),
          )
        ]);
  }

  Widget promoview() {
    return Container(
        margin: const EdgeInsets.all(5),
        width: 260,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "assets/promo-demo.png",
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget exploreview(context, text) {
    return Container(
        margin: const EdgeInsets.all(5),
        width: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Column(
            children: [
              Image.asset(
                "assets/exploredemo.png",
                fit: BoxFit.cover,
                height: 130,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(5),
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'mulibold',
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget buildIconFooter(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Favourites ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'neosansbold',
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Edit >>",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'mulibold',
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            )),
        Container(
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _mainController.listCategory.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 20),
              // ignore: missing_return
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.LISTCONSELOR);
                  },
                  child: iconmenu(
                      context,
                      _mainController.listCategory[i].image,
                      "type",
                      _mainController.listCategory[i].name),
                );
              }),
        ),
        // Container(
        //   margin: const EdgeInsets.only(top: 15, bottom: 5),
        //   padding: const EdgeInsets.all(15),
        //   width: double.infinity,
        //   child: Text(
        //     "Other Service",
        //     textAlign: TextAlign.left,
        //     style: TextStyle(
        //       fontFamily: 'neosansbold',
        //       fontSize: 20,
        //     ),
        //   ),
        // ),
        // Container(
        //   child: GridView.builder(
        //       physics: const NeverScrollableScrollPhysics(),
        //       shrinkWrap: true,
        //       itemCount: categoryItemsnonfav.length,
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 4, mainAxisSpacing: 20),
        //       itemBuilder: (ctx, i) {
        //         var ii = i;
        //         return InkWell(
        //           onTap: () {
        //             Navigator.of(context)
        //                 .push(new MaterialPageRoute(
        //                     builder: (context) => new ListConselor(
        //                         categoryItemsnonfav[ii].id.toString())))
        //                 .then((result) {
        //               if (result != "") {
        //                 debugPrint(result);
        //               }
        //             });
        //           },
        //           child: iconmenu(
        //               context,
        //               categoryItemsnonfav[ii].image.toString(),
        //               "type",
        //               categoryItemsnonfav[ii].name.toString()),
        //         );
        //       }),
        // ),
      ],
    );
  }

  Widget promoview2(text) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(15),
      child: Text(
        text,
        style: TextStyle(fontFamily: 'mulibold', color: Colors.white),
      ),
    );
  }
}
