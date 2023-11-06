import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/pages/getstarted.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/text_fild.dart';
import 'package:my_wallet/pages/SignUpPage.dart';
import 'package:my_wallet/widgets/social.login.dart';
import '../widgets/button.global.dart';

class LoginPage extends StatefulWidget {
  const LoginPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            SpaceVH(height: 3.0),
            Text(
              "Welcome !",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SpaceVH(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login to your account',
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
                controller: userName,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                  icon: const Icon(
                    Icons.person,
                    color: blueButton,
                    size: 30,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 20.0),
            Container(
              width: 320,
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
                controller: userPass,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(
                    height: 1,
                  ),
                  icon: const Icon(
                    Icons.key_off,
                    color: blueButton,
                    size: 30,
                  ),
                ),
              ),
            ),
            SpaceVH(height: 20.0),
            ButtonGlobal(),
            SpaceVH(height: 20.0),
            SocialLogin(),
            SpaceVH(height: 20.0),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Not registered yet?',
                        style: headlineDot1,
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Create an account',
                              style: headline11,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => SignUpPage()));
                                })
                        ]),
                  ),
                ))
          ]),
        ),
      ]),
    );
  }
}
