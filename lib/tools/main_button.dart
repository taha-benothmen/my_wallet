import 'package:flutter/material.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/pages/login_page.dart';

class Mainbutton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? image;
  final Icon? icon;
  final Color? txtColor;
  final Color btnColor;

  const Mainbutton({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon,
    this.image,
    this.txtColor,
    required this.btnColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 170.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Image.asset(
                'assets/image/$image',
                height: 25.0,
                width: 60.0,
              ),
            Text(
              text,
              style: txtColor != null
                  ? headline2.copyWith(color: txtColor)
                  : headline2,
            ),
            if (icon != null) // display the provided icon if not null
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}
