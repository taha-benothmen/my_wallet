import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:my_wallet/pages/addcards.dart';
import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/getstarted.dart';
import 'package:my_wallet/pages/phone.dart';
import 'package:my_wallet/pages/verfication.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';
import 'package:my_wallet/pages/SignUpPage.dart';
import 'package:my_wallet/widgets/button.next.dart';
import 'package:my_wallet/widgets/social.login.dart';
import '../widgets/button.global.dart';

TextEditingController userName = TextEditingController();

class VerifPage extends StatelessWidget {
  const VerifPage({Key});
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
          margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => phonePage(context)));
            },
          )),
      Container(
        alignment: Alignment.bottomCenter,
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SpaceVH(
            height: 100,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'MY',
                style: headline,
              ),
              TextSpan(
                text: 'WALLET',
                style: headlineDot,
              ),
            ]),
          ),
          SpaceVH(
            height: 40,
          ),
          Column(
            children: [
              const SizedBox(
                height: 5,
                width: 10,
              ),
              const SpaceVH(
                height: 5,
              ),
            ],
          ),
          const SpaceVH(height: 15.0),
          Container(
              width: 320,
              height: 220,
              padding: const EdgeInsets.only(top: 2, left: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(183, 14, 30, 99),
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
                    const Text(
                      'Verify your phone number',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'We will send a verification code to +216 ** *** *60 to verify that is your phone number .',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(217, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0, 2, 12, 1),
                      padding: const EdgeInsets.only(top: 0, left: 15),
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
                        controller: userName,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        decoration: const InputDecoration(
                          hintText: 'Enter the code',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0),
                          hintStyle: TextStyle(
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
          SpaceVH(
            height: 40,
          ),
          Mainbutton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => addcardsPage()));
            },
            btnColor: blueButton,
            icon: Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 30,
            ),
            text: 'Send Code ',
          ),
        ])),
      )
    ]));
  }
}
