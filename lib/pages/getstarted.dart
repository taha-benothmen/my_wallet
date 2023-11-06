import 'package:flutter/material.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/pages/login_page.dart';

// ignore: camel_case_types
class getstartedscreen extends StatelessWidget {
  const getstartedscreen({Key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SpaceVH(height: 15.0),
                Text(
                  "Welcome !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SpaceVH(height: 50.0),
                Text("Send , Spend and Save money",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                SpaceVH(height: 50.0),
                Mainbutton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => LoginPage(context)));
                  },
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 30,
                  ),
                  btnColor: blueButton,
                  text: 'Get Started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
