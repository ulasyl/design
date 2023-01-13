import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/main.dart';

class primaryButton extends StatelessWidget {
  const primaryButton(this.buttonHeader,this.adres,{
    Key? key,
  }) : super(key: key);

  final String buttonHeader;
  final adres; 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => adres)),
      },
      child: Text(buttonHeader),
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor
      ),
    );
  }
}