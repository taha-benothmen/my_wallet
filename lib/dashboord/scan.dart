import 'package:flutter/material.dart';
import 'package:my_wallet/dashboord/confirmtransfert.dart';

import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/login_page.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key});
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scan To Pay',
              style: headline2,
            ),
          ],
        ),
        SpaceVH(height: 15.0),
        Container(
          margin: EdgeInsets.all(0),
          height: 400,
          child: Center(
            child: Image.asset('images/scan.png'),
          ),
        ),
        SpaceVH(height: 20.0),
        Mainbutton(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => ConfirmPage()));
          },
          btnColor: blueButton,
          text: 'Scan',
        ),
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
                              "Payment with QR code",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.qr_code,
                            color: blueButton,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Hold the code inside the frame,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Text(
                              "it will be scanned automatically",
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
                    height: 20,
                  ),
                  Center(
                    child: Mainbutton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ConfirmPage()));
                      },
                      btnColor: blueButton,
                      text: 'Scan',
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
        initialChildSize: 0.30,
        minChildSize: 0.30,
      ),
    ]));
  }
}
