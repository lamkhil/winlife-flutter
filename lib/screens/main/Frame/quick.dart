import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/data/model/category_model.dart';

class FrameQuick extends StatefulWidget {
  const FrameQuick({Key? key}) : super(key: key);

  @override
  _FrameQuickState createState() => _FrameQuickState();
}

class _FrameQuickState extends State<FrameQuick> {
  String? number;
  TextEditingController co_problem = new TextEditingController();
  SolidController _controller = SolidController();
  List<Widget> listkategori = [];
  List<CategoryItem> categoryItems = [];
  String? price;
  String id_layanan = "";
  String icon_layanan = "";
  String judul_layanan = "";
  String typekonsultasi = "chat";
  String saldo = "-";
  String termin = "30";
  bool isloading = false;
  bool mainload = false;
  bool havedata = false;

  Future _getlist() async {
    setState(() {
      for (int i = 0; i < 8; i++) {
        categoryItems.add(
          CategoryItem(
            "datanya[i]['id']",
            "1" == "1" ? true : false,
            "datanya[i]['image']",
            "datanya[i]['name']",
          ),
        );
      }
    });
  }

  @override
  void initState() {
    _getlist();
    super.initState();
  }

  Future<void> _refresh() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xff35B85A),
        title: Center(
          child: Text(
            "Konsultasi",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'neosansbold', color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
            child: Column(
              children: <Widget>[
                //================================================

                Container(
                    child: Text(
                  "Silahkan masukan data di bawah ini : ",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'mulibold', fontSize: 18),
                )),

                Container(
                  child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(children: [
                        //==================================================

                        Container(
                          width: double.infinity,
                          child: Text("Pilih Tipe Konsultasi :"),
                        ),
                        Row(
                          children: [
                            viewtype("Chat", "chat", Icons.chat_bubble),
                            viewtype("Call", "call", FontAwesomeIcons.phone),
                            viewtype("Video", "video", FontAwesomeIcons.video),
                            viewtype("Meeting", "meeting",
                                FontAwesomeIcons.handshake),
                          ],
                        ),
                        //==================================================  //==================================================

                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: double.infinity,
                          child: Text("Termin Pembayaran :"),
                        ),
                        Row(
                          children: [
                            viewdurasi("30"),
                            viewdurasi("60"),
                            viewdurasi("90"),
                          ],
                        ),
                        //==================================================
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 15),
                          width: double.infinity,
                          child: Text("Pilih Layanan :"),
                        ),
                        InkWell(
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
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey[200]!,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 15, right: 15),
                              margin: const EdgeInsets.only(
                                  top: 0, left: 5, right: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: id_layanan == ''
                                        ? Text(
                                            "Pilih Layanan",
                                            style: TextStyle(
                                                fontFamily: 'neosansbold',
                                                fontSize: 18),
                                          )
                                        : Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    right: 10,
                                                  ),
                                                  child: Image.network(
                                                      icon_layanan),
                                                  width: 30,
                                                ),
                                                Text(
                                                  judul_layanan,
                                                  style: TextStyle(
                                                      fontFamily: 'neosansbold',
                                                      fontSize: 18),
                                                )
                                              ]),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Icon(
                                        FontAwesomeIcons.chevronRight,
                                        color: Colors.grey[400],
                                        size: 13,
                                      ))
                                ],
                              )),
                          onTap: () {
                            _controller.isOpened
                                ? _controller.hide()
                                : _controller.show();
                          },
                        ),
                        //==================================================
                        //==================================================

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
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            margin: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            child: Column(
                              children: [
                                Column(children: [
                                  // for (int i = 0;
                                  //     i < response['data'].length;
                                  //     i++) ...{
                                  //   exploreview(response['data'][i]),
                                  // }
                                ]),
                                Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Text("Please Input Your Problem :")),
                                Container(
                                  child: TextFormField(
                                    controller: co_problem,
                                    keyboardType: TextInputType.multiline,
                                    autofocus: true,
                                    minLines: 1,
                                    maxLines: 4,
                                    decoration: const InputDecoration(
                                      hintText:
                                          'Explain your problem to conselor',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                  padding: const EdgeInsets.all(10),
                                ),
                              ],
                            )),
                        //==================================================
                      ])),
                ),

                //================================================
                //

                //================================================
                //
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.8,
                            blurRadius: 5,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                        color: mainColor,
                        border: Border.all(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(13),
                    margin: const EdgeInsets.only(
                      top: 40,
                      bottom: 20,
                      left: 5,
                      right: 5,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            if (id_layanan != "") {}
                          },
                          child: Text(
                            "Cari Konselor",
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
          ),
        ),
      ),
      bottomSheet: SolidBottomSheet(
        maxHeight: 500,
        controller: _controller,
        draggableBody: true,
        toggleVisibilityOnTap: true,
        body: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          color: Colors.white,
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
                          borderRadius: BorderRadius.all(Radius.circular(35))),
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
                          borderRadius: BorderRadius.all(Radius.circular(35))),
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
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: buildIconFooter()),
                ),
              )
            ],
          ),
        ),
        headerBar: Container(),
      ),
    );
  }

  Widget viewtype(title, type, icon) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            typekonsultasi = type;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.8,
                  blurRadius: 5,
                  offset: Offset(2, 5), // changes position of shadow
                ),
              ],
              color: typekonsultasi == type ? Colors.grey[300] : Colors.white,
              border: Border.all(
                color: Colors.grey[200]!,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          margin: const EdgeInsets.only(top: 15, left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Icon(icon, color: Colors.grey[500], size: 15),
              ),
              Container(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'neosansbold',
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconmenu(assets, type, texticon) {
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

  Widget buildIconFooter() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 5),
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: Text(
                    "Pilih layanan dibawah ini :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'neosansbold',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categoryItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, mainAxisSpacing: 20),
                      itemBuilder: (ctx, i) {
                        var ii = i;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              id_layanan = categoryItems[ii].id.toString();
                              icon_layanan = categoryItems[ii].image.toString();
                              judul_layanan = categoryItems[ii].name.toString();
                            });
                          },
                          child: iconmenu(categoryItems[ii].image.toString(),
                              "type", categoryItems[ii].name.toString()),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ]);
  }

  Widget viewdurasi(durasi) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            termin = durasi;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.8,
                  blurRadius: 5,
                  offset: Offset(2, 5), // changes position of shadow
                ),
              ],
              color: termin == durasi ? Colors.grey[300] : Colors.white,
              border: Border.all(
                color: Colors.grey[200]!,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          margin: const EdgeInsets.only(top: 15, left: 5, right: 5),
          child: Text(
            "$durasi Menit",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
