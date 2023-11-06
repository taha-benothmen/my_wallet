import 'package:flutter/material.dart';
import 'package:my_wallet/dashboord/dash.dart';
import 'package:my_wallet/pages/SignUpPage.dart';
import 'package:my_wallet/tools/colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => DashPage()));
      },
      child: Container(
          alignment: Alignment.center,
          height: 55,
          width: 150,
          decoration: BoxDecoration(
            color: blueButton,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7,
              )
            ],
          ),
          child: const Text(
            'Login',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
