import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField(this.text,this.icon,{
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      cursorHeight: 20,
      showCursor: true ,
      decoration: InputDecoration(
        labelText: text,
        iconColor: Colors.amber,
        prefixIcon: Icon(icon,color: Colors.black,),
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300
        ),
        border: InputBorder.none,
      ),
    );
  }
}