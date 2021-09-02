import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/screens/main/service/detail_conselor.dart';

class ListConselor extends StatefulWidget {
  var id_layanan;
  ListConselor(this.id_layanan);

  @override
  _ListConselorState createState() => _ListConselorState();
}

class _ListConselorState extends State<ListConselor> {
  var response;
  bool loaded = false;

  Future<void> _refresh() async {
    //_restsend();
  }

  void Consulnow(type, data) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List Conselor",
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
        body: SafeArea(
            child: RefreshIndicator(
          onRefresh: _refresh,
          child: !loaded
              ? Center(
                  child: SpinKitFadingCircle(
                    color: mainColor,
                  ),
                )
              : response['code'] != "200"
                  ? Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  width: 300,
                                  child: Image.asset("assets/icon_empty.png"),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  response['message'],
                                  style: TextStyle(
                                      fontFamily: "neosansbold", fontSize: 20),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _refresh();
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Text("Reload")),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: new BoxConstraints(
                            minHeight: MediaQuery.of(context).size.height,
                          ),
                          child: Column(
                            children: <Widget>[
                              for (int i = 0;
                                  i < response['data'].length;
                                  i++) ...{
                                exploreview(context, response['data'][i]),
                              }
                            ],
                          ),
                        ),
                      )),
        )));
  }

  Widget exploreview(BuildContext context, data) {
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
                                color: data['data7'] == "1"
                                    ? Colors.green
                                    : Colors.grey,
                              ),
                            ),
                            Text(data['data2'].toString(),
                                style: TextStyle(
                                    fontFamily: 'neosansbold', fontSize: 18)),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(data['data3'].toString()),
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
                                  "Start With :",
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
                                  Consulnow("Chat", data);
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
                                  Consulnow("Phone", data);
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
                                  Consulnow("Video Call", data);
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
                                  Consulnow("Meeting", data);
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
                  data['data5'].toString(),
                );
              },
              openColor: Colors.white,
              closedElevation: 10.0,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              closedColor: Colors.white,
              openBuilder: (_, closeContainer) {
                return new DetailConselor(
                    data['data1'].toString(), "widget.id_layanan");
              },
            ),
          ),
        ),
      ],
    );
  }
}
