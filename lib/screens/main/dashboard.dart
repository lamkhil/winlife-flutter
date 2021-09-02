import 'package:flutter/material.dart';
import 'package:winlife/constant/color.dart';
import 'package:winlife/screens/main/Frame/history.dart';
import 'package:winlife/screens/main/Frame/home.dart';
import 'package:winlife/screens/main/Frame/profil.dart';
import 'package:winlife/screens/main/Frame/promo.dart';
import 'package:winlife/screens/main/Frame/quick.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Widget> _tabList = [
    FrameHome(),
    FrameHistory(),
    FrameQuick(),
    FramePromo(),
    FrameProfile()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _tabList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: mainColor,
          type: BottomNavigationBarType.fixed,
          onTap: (currentIndex) {
            // checkAccount();
            debugPrint("Tab Number : " + currentIndex.toString());
            setState(() {
              _currentIndex = currentIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                title: Text(
                  "Home",
                  style: TextStyle(
                      fontFamily: _currentIndex == 0 ? 'mulibold' : 'muli',
                      fontSize: 12),
                ),
                icon: _currentIndex == 0
                    ? Image.asset(
                        'assets/nav/nav_home_sel.png',
                        width: 28,
                        gaplessPlayback: true,
                      )
                    : Image.asset(
                        'assets/nav/nav_home.png',
                        width: 28,
                        gaplessPlayback: true,
                      )),
            BottomNavigationBarItem(
                title: Text(
                  "History",
                  style: TextStyle(
                      fontFamily: _currentIndex == 1 ? 'mulibold' : 'muli',
                      fontSize: 12),
                ),
                icon: _currentIndex == 1
                    ? Image.asset(
                        'assets/nav/nav_history_sel.png',
                        width: 28,
                        gaplessPlayback: true,
                      )
                    : Image.asset(
                        'assets/nav/nav_history.png',
                        width: 28,
                        gaplessPlayback: true,
                      )),
            BottomNavigationBarItem(
                title: Text(
                  "Konsultasi",
                  style: TextStyle(
                      fontFamily: _currentIndex == 2 ? 'mulibold' : 'muli',
                      fontSize: 12),
                ),
                icon: _currentIndex == 2
                    ? Image.asset(
                        'assets/nav/nav_topup_sel.png',
                        width: 28,
                        gaplessPlayback: true,
                      )
                    : Image.asset(
                        'assets/nav/nav_topup.png',
                        width: 28,
                        gaplessPlayback: true,
                      )),
            BottomNavigationBarItem(
                title: Text(
                  "Reward",
                  style: TextStyle(
                      fontFamily: _currentIndex == 3 ? 'mulibold' : 'muli',
                      fontSize: 12),
                ),
                icon: _currentIndex == 3
                    ? Image.asset(
                        'assets/nav/nav_promo_sel.png',
                        width: 28,
                        gaplessPlayback: true,
                      )
                    : Image.asset(
                        'assets/nav/nav_promo.png',
                        width: 28,
                        gaplessPlayback: true,
                      )),
            BottomNavigationBarItem(
                title: Text(
                  "Profile",
                  style: TextStyle(
                      fontFamily: _currentIndex == 4 ? 'mulibold' : 'muli',
                      fontSize: 12),
                ),
                icon: _currentIndex == 4
                    ? Image.asset(
                        'assets/nav/nav_profile_sel.png',
                        width: 28,
                        gaplessPlayback: true,
                      )
                    : Image.asset(
                        'assets/nav/nav_profile.png',
                        width: 28,
                        gaplessPlayback: true,
                      ))
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
