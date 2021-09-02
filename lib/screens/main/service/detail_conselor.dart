import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:winlife/constant/color.dart';

class DetailConselor extends StatefulWidget {
  var id_conselor;
  var id_layanan;
  DetailConselor(this.id_conselor, this.id_layanan);

  @override
  _DetailConselorState createState() => _DetailConselorState();
}

class _DetailConselorState extends State<DetailConselor> {
  var name = "";
  var conselorservicedata = "";
  var city = "";
  var rate = "";
  var keterangan = "";
  var address = "";
  var data5 = "";
  bool loaded = false;

  void Consulnow(type, data) {}

  Future<void> _refresh() async {}

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Detail Conselor",
            style: TextStyle(fontFamily: 'neosansbold', color: Colors.black87),
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
              : Container(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.8,
                                  blurRadius: 8,
                                  offset: Offset(
                                      2, 6), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          margin: const EdgeInsets.only(
                              left: 10, top: 15, right: 10),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      width: 65,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          data5.toString(),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 15),
                                        margin: const EdgeInsets.only(left: 10),
                                        width: double.infinity,
                                        height: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(name.toString(),
                                                style: TextStyle(
                                                    fontFamily: 'neosansbold',
                                                    fontSize: 18)),
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 4),
                                              child: Text(city.toString()),
                                            ),
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    top: 4),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Rate: ",
                                                      style: TextStyle(
                                                          fontFamily: 'muli',
                                                          color: Colors
                                                              .yellow[800]),
                                                    ),
                                                    Icon(
                                                      Icons.star_rate,
                                                      color: Colors.yellow,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      rate.toString(),
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'neosansbold',
                                                          color: Colors
                                                              .yellow[800]),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 5,
                                ),
                                color: Colors.grey[300],
                                width: double.infinity,
                                height: 1,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    //=============================================================
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text("Specialist:",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 5),
                                      child: Text(conselorservicedata,
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 15)),
                                    ),
                                    //=============================================================
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text("Location :",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 5),
                                      child: Text(address,
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 15)),
                                    ),
                                    //=============================================================
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text("About:",
                                          style: TextStyle(
                                              fontFamily: 'neosansbold',
                                              fontSize: 15)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 5),
                                      child: Text(keterangan,
                                          style: TextStyle(
                                              fontFamily: 'muli',
                                              fontSize: 15)),
                                    ),
                                    //=============================================================
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                  top: 18,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                Consulnow(
                                                    "Chat", widget.id_conselor);
                                              },
                                              child: Container(
                                                height: 35,
                                                child: Icon(Icons.chat_bubble,
                                                    color: Colors.grey[500],
                                                    size: 20),
                                              ),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Consulnow("Phone",
                                                    widget.id_conselor);
                                              },
                                              child: Container(
                                                height: 35,
                                                child: Icon(
                                                    FontAwesomeIcons.phone,
                                                    color: Colors.grey[500],
                                                    size: 20),
                                              ),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Consulnow("Video Call",
                                                    widget.id_conselor);
                                              },
                                              child: Container(
                                                height: 35,
                                                child: Icon(
                                                    FontAwesomeIcons.video,
                                                    color: Colors.grey[500],
                                                    size: 20),
                                              ),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Consulnow("Meeting",
                                                    widget.id_conselor);
                                              },
                                              child: Container(
                                                height: 35,
                                                child: Icon(
                                                    FontAwesomeIcons.handshake,
                                                    color: Colors.grey[500],
                                                    size: 20),
                                              ),
                                            )),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
        )));
  }
}
