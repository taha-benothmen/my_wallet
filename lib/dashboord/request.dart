import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/dashboord/confirmtransfert.dart';
import 'package:my_wallet/dashboord/history.dart';

import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/login_page.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';

class ReqPage extends StatelessWidget {
  const ReqPage({Key});
  @override
  Widget build(BuildContext context) {
    TextEditingController fName = TextEditingController();
    TextEditingController val = TextEditingController();

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
                  "Request",
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
                              "Contact",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SpaceVH(
                    height: 35,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 250,
                          height: 50,
                          padding: const EdgeInsets.only(top: 2, left: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 7,
                                )
                              ]),
                          child: TextFormField(
                            controller: fName,
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Enter phone number',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              hintStyle: TextStyle(
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SpaceVH(
                    height: 35,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Recent",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: '',
                                style: headlineDot1,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' See All contacts',
                                      style: headline11,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      HisPage()));
                                        })
                                ]),
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
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
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Set amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                            Text(
                              "How much would you like to Request ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SpaceVH(
                    height: 35,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 250,
                          height: 50,
                          padding: const EdgeInsets.only(top: 2, left: 15),
                          child: TextFormField(
                            controller: val,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Amount',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              hintStyle: TextStyle(
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.ads_click,
                            color: Colors.lightBlue[900],
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => ConfirmPage()));
                          },
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 33),
                    child: Row(
                      children: <Widget>[
                        //copy same button
                        Container(
                          child: Text(
                            "100 TND",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 220, 220, 220),
                                    blurRadius: 10.0,
                                    spreadRadius: 4.5)
                              ]),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),

                        SizedBox(
                          width: 16,
                        ),

                        Container(
                          child: Text(
                            "250 TND",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 219, 219, 219),
                                    blurRadius: 10.0,
                                    spreadRadius: 4.5)
                              ]),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        SizedBox(
                          width: 16,
                        ),

                        Container(
                          child: Text(
                            "300 TND",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 219, 219, 219),
                                    blurRadius: 10.0,
                                    spreadRadius: 4.5)
                              ]),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ],
                    ),
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
        initialChildSize: 0.85,
        minChildSize: 0.80,
      ),
    ]));
  }
}
