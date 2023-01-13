import 'package:flutter/material.dart';
import 'package:proje/common/appBarBack.dart';
import 'package:proje/screens/responsive.dart';
import 'package:proje/widgets/password_text_field.dart';
import 'package:proje/widgets/primary-button.dart';
import 'package:proje/widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final double textFieldMargin = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBackDesign(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: textFieldMargin),
              child: Text("Kayıt ol",style: Theme.of(context).textTheme.displaySmall),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1)
              ),
              child: const textField("Adınız ve soyadınız", Icons.supervised_user_circle),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical:textFieldMargin),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1)
                ),
                child: const textField("Mail Adresiniz", Icons.mail),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: textFieldMargin),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1)
                ),
                child: const password_text_field(),
              ),
            ),
            const primaryButton("Kayıt ol",responsive())
          ],
        ),
      ),
    );
  }
}