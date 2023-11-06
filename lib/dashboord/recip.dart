import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/dashboord/dash.dart';
import 'package:my_wallet/dashboord/payment.dart';

import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/login_page.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';

class RecipPage extends StatelessWidget {
  const RecipPage({Key});
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
            const SizedBox(
              height: 5,
              width: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: blueButton,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DashPage()));
                  },
                )),
            const SpaceVH(
              height: 5,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Transfert Receipt',
                style: headline2,
              ),
            ),
          ],
        ),
        const SpaceVH(height: 15.0),
        Container(
            width: 320,
            height: 500,
            padding: const EdgeInsets.only(top: 2, left: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(29, 0, 0, 0).withOpacity(0.1),
                    blurRadius: 7,
                  )
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    height: 100,
                    child: Center(
                      child: Image.asset('images/check.png'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Transfert Succes',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 173, 142, 112),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Your money has been successfully sent to',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Mahmoued Chouchen',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Total Transfert',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '130 TND',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 1, 10, 1),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(236, 189, 189, 189),
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: []),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.person_3,
                            color: blueButton,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Mahmoud Chouchene",
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
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "30 TND",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  color: Colors.blueGrey),
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
              const SizedBox(
                height: 25,
              ),
              Mainbutton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DashPage()));
                },
                btnColor: blueButton,
                text: 'Done',
              ),
              SizedBox(
                height: 11,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: '',
                      style: headlineDot1,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Transfer more money',
                            style: TextStyle(
                                color: Color.fromARGB(255, 173, 142, 112),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => DashPage()));
                              })
                      ]),
                ),
              )
            ])),
      ]))
    ]));
  }
}
