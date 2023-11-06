import 'package:flutter/material.dart';
import 'package:my_wallet/tools/colors.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Next');
      },
      child: Container(
          alignment: Alignment.center,
          height: 45,
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
            'Next ->',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
