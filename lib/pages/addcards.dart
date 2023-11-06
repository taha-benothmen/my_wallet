import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:get/get.dart';
import 'package:my_wallet/pages/SignUpPage.dart';
import 'package:my_wallet/pages/backup.dart';
import 'package:my_wallet/pages/getstarted.dart';
import 'package:my_wallet/pages/home.dart';
import 'package:my_wallet/pages/phone.dart';
import 'package:my_wallet/pages/verfication.dart';
import 'package:my_wallet/tools/colors.dart';
import 'package:my_wallet/tools/demo.dart';
import 'package:my_wallet/tools/main_button.dart';
import 'package:my_wallet/tools/space.dart';
import 'package:my_wallet/tools/style.dart';
import 'package:my_wallet/tools/text_fild.dart';
import 'package:my_wallet/tools/text_style.dart';
import 'package:my_wallet/widgets/button.next.dart';
import 'package:my_wallet/widgets/social.login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class addcardsPage extends StatefulWidget {
  const addcardsPage({Key? key}) : super(key: key);

  @override
  _addcardsPageState createState() => _addcardsPageState();
}

class _addcardsPageState extends State<addcardsPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
        child: Container(
          child: Column(
            children: [
              SpaceVH(
                height: 80,
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
              SpaceVH(height: 15.0),
              Text(
                "Add your card",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SpaceVH(height: 5.0),
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardForm(
                      cardNumber: cardNumber,
                      expiryDate: expiryDate,
                      cardHolderName: cardHolderName,
                      cvvCode: cvvCode,
                      onCreditCardModelChange: onCreditCardModelChange,
                      themeColor: Colors.blue,
                      formKey: formKey,
                      cardNumberDecoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Number',
                          hintText: 'xxxx xxxx xxxx xxxx'),
                      expiryDateDecoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 15),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Expired Date',
                          hintText: 'MM/YY'),
                      cvvCodeDecoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 15),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'CVV',
                          hintText: 'xxx'),
                      cardHolderDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 2, left: 15),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 5, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Bank name',
                      ),
                    ),
                    SpaceVH(
                      height: 22,
                    ),
                    Mainbutton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => backupPage(context)));
                      },
                      btnColor: blueButton,
                      icon: Icon(
                        Icons.arrow_right_alt,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 30,
                      ),
                      text: 'Next ',
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      )
    ]));
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
