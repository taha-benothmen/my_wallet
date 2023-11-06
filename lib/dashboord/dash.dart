import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_wallet/dashboord/home.dart';
import 'package:my_wallet/dashboord/history.dart';
import 'package:my_wallet/dashboord/profile.dart';
import 'package:my_wallet/dashboord/request.dart';
import 'package:my_wallet/dashboord/scan.dart';
import 'package:my_wallet/tools/colors.dart';

import 'package:flutter/material.dart';

class DashPage extends StatelessWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.history,
      size: 30,
    ),
    Icon(
      Icons.qr_code_scanner,
      size: 30,
    ),
    Icon(
      Icons.request_page,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    )
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueButton,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: const Color.fromARGB(0, 36, 55, 99),
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: blueButton,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = HomePage();
        break;
      case 1:
        widget = HisPage();
        break;
      case 2:
        widget = ScanPage();
        break;
      case 3:
        widget = ReqPage();
        break;
      case 4:
        widget = ProfilePage();
        break;
      default:
        widget = HomePage();
        break;
    }
    return widget;
  }
}
