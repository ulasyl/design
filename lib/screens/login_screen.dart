import 'package:flutter/material.dart';
import 'package:proje/common/appBarBack.dart';
import 'package:proje/main.dart';
import 'package:proje/screens/responsive.dart';
import 'package:proje/widgets/primary-button.dart';

import '../widgets/password_text_field.dart';
import '../widgets/text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBackDesign(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text("Giriş Yap",style: Theme.of(context).textTheme.displaySmall,),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: thirthColor
            ),
            child: const textField("Mail Adresiniz",Icons.mail),
          ), Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: thirthColor
              ),
              child: password_text_field()
            ),
          ),
          const primaryButton("Giriş Yap",responsive())
        ]),
      ),
    );
  }
}

