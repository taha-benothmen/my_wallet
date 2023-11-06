import 'package:flutter/material.dart';
import 'package:my_wallet/dashboord/dash.dart';
import 'package:my_wallet/dashboord/payment.dart';
import 'package:my_wallet/dashboord/recip.dart';

import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/login_page.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key});
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
      Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(
          children: [
            SizedBox(
              height: 5,
              width: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: blueButton,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => DashPage()));
                  },
                )),
            SpaceVH(
              height: 7,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Confirm Transfert',
                style: headline2,
              ),
            ),
          ],
        ),
        SpaceVH(height: 15.0),
        Container(
          margin: EdgeInsets.all(0),
          height: 150,
          child: Center(
              child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/user.jpg'),
          )),
        ),
        SpaceVH(height: 15.0),
        Column(
          children: <Widget>[
            Text(
              "Mohamed Ali",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            Text(
              "465-465-465",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            Text(
              "Transert on 4 mars 2023",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ],
        ),
        SpaceVH(
          height: 25,
        ),
        Container(
            width: 320,
            height: 100,
            padding: const EdgeInsets.only(top: 2, left: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(58, 255, 255, 255),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(29, 0, 0, 0).withOpacity(0.1),
                    blurRadius: 7,
                  )
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '250 TND',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ])),
        SpaceVH(height: 20.0),
      ])),
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
                              "Choose Cards",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.attach_money_outlined,
                            color: blueButton,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        margin: EdgeInsets.fromLTRB(70, 1, 0, 1),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(251, 225, 225, 225),
                            borderRadius: BorderRadius.circular(22),
                            boxShadow: []),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.paypal_rounded,
                                color: Colors.black54,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "Al tijari bank",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                const Text(
                                  "123-123-123",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_downward,
                                    color: Colors.black45,
                                    size: 25,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22,
                        ),
                      ),
                    ],
                  ),
                  SpaceVH(
                    height: 20,
                  ),
                  Center(
                    child: Mainbutton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => RecipPage()));
                      },
                      btnColor: blueButton,
                      text: 'Transfert Money',
                    ),
                  )
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
        initialChildSize: 0.35,
        minChildSize: 0.35,
      ),
    ]));
  }
}
