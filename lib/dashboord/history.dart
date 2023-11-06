import 'package:flutter/material.dart';

import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/login_page.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';

class HisPage extends StatelessWidget {
  const HisPage({Key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )
          ],
        ),
      ),
      DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.history,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SpaceVH(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_2,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Mohamed Ali Ben jemaa",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "465-465-465",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "30 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_3,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Fatma Ben Mohamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "123-123-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "50 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_4,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Hamadi Weld Hamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "231-231-231",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "100 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_2_outlined,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Taha Ben Othmen",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "2123-2123-1223",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "10 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_3,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Fatma Ben Mohamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "123-123-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "150 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_3,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Fatma Ben Mohamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "123-123-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "250 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_3,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Fatma Ben Mohamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "123-123-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "30 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_3,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Fatma Ben Mohamed",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "123-123-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "150 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.lightBlue[900]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
          );
        },
        initialChildSize: 0.80,
        minChildSize: 0.80,
      ),
    ]));
  }
}
