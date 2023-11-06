import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/pages/getstarted.dart';
import 'package:my_wallet/pages/login_page.dart';
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
import 'package:my_wallet/pages/phone.dart';
import 'package:my_wallet/pages/verfication.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController fName = TextEditingController();
  TextEditingController sName = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPh = TextEditingController();

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => LoginPage(context)));
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
            SpaceVH(height: 7.0),
            Text(
              "Sign up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SpaceVH(height: 10.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                  hintText: 'First name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 7.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                controller: sName,
                keyboardType: TextInputType.name,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'Second name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 7.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                keyboardType: TextInputType.name,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 7.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                controller: userEmail,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 7.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                controller: userPass,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 7.0),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(top: 0, left: 30),
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
                controller: userPh,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Re-entre Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 20.0),
            Mainbutton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => phonePage(context)));
              },
              icon: Icon(
                Icons.arrow_right_alt,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 30,
              ),
              btnColor: blueButton,
              text: 'Sign Up',
            ),
          ]),
        ),
      ]),
    );
  }
}
