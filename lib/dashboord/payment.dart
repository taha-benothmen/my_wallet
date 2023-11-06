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
      ]))
    ]));
  }
}
