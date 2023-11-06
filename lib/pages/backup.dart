import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:my_wallet/dashboord/dash.dart';
import 'package:my_wallet/pages/addcards.dart';
import 'package:my_wallet/pages/backup2.dart';
import 'package:my_wallet/pages/getstarted.dart';
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
import 'package:my_wallet/dashboord/request.dart';

class backupPage extends StatefulWidget {
  const backupPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _backupPageState createState() => _backupPageState();
}

class _backupPageState extends State<backupPage> {
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
                  MaterialPageRoute(builder: (builder) => VerifPage()));
            },
          )),
      Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SpaceVH(
          height: 40,
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
        SpaceVH(height: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Back up your wallet now !',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SpaceVH(height: 7.0),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.fromLTRB(35, 20, 35, 20),
          child: Center(
            child: Text(
              'In the next step you will see Secret phrase (10 words) that allows you recover your wallet',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0),
          height: 130,
          child: Center(
            child: Image.asset('images/smartphone.png'),
          ),
        ),
        SpaceVH(height: 15.0),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7,
              ),
            ],
          ),
          child: SwitchListTile(
            value: true,
            onChanged: (newValue) {},
            title: Text(
              'If I lose my secret phrase, my funds will be lost forever.',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 2, 73, 132),
                fontSize: 11,
              ),
            ),
            activeColor: Color.fromARGB(255, 2, 73, 132),
          ),
        ),
        SpaceVH(height: 10.0),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7,
              ),
            ],
          ),
          child: SwitchListTile(
            value: true,
            onChanged: (newValue) {},
            title: Text(
              'If i expose or share my secret phrase to anybody, my funds can get stolen.',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 2, 73, 132),
                fontSize: 11,
              ),
            ),
            activeColor: Color.fromARGB(255, 2, 73, 132),
          ),
        ),
        SpaceVH(height: 20.0),
        Mainbutton(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => DashPage()));
          },
          btnColor: blueButton,
          text: 'Continue',
        ),
      ]))
    ]));
  }
}
