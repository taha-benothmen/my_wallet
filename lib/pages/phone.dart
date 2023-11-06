import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
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

class phonePage extends StatefulWidget {
  const phonePage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _phonePageState createState() => _phonePageState();
}

class _phonePageState extends State<phonePage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
                    MaterialPageRoute(builder: (builder) => SignUpPage()));
              },
            )),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            SpaceVH(height: 70.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your phone number',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SpaceVH(height: 20.0),
            Container(
              width: 320,
              height: 50,
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
              child: Stack(
                children: [
                  InternationalPhoneNumberInput(
                    onInputChanged: (Value) {},
                    cursorColor: blueButton,
                    formatInput: false,
                    selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                    inputDecoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(bottom: 18, top: 13, left: 0),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(66, 67, 66, 66),
                          fontSize: 16,
                        )),
                  ),
                  Positioned(
                    left: 90,
                    top: 8,
                    bottom: 8,
                    child: Container(
                      height: 40,
                      width: 1,
                      color: Colors.black.withOpacity(0.13),
                    ),
                  ),
                ],
              ),
            ),
            SpaceVH(height: 30),
            Mainbutton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => VerifPage()));
              },
              icon: Icon(
                Icons.arrow_right_alt,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 30,
              ),
              btnColor: blueButton,
              text: 'Next ',
            ),
            SpaceVH(height: 70.0),
            SpaceVH(height: 40.0),
          ]),
        ),
      ]),
    );
  }
}
