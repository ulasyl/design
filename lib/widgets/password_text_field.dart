import 'package:flutter/material.dart';

class password_text_field extends StatelessWidget {
  const password_text_field({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
    cursorColor: Colors.black,
    cursorHeight: 20,
    showCursor: true ,
    obscureText: true,
    decoration: InputDecoration(
      labelText: "Şifreniz",
      iconColor: Colors.amber,
      prefixIcon: Icon(Icons.password,color: Colors.black,),
      labelStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300
      ),
      border: InputBorder.none,
    ),
   );
  }
}