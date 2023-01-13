import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/main.dart';

class status extends StatelessWidget {
  const status(this.actionHeader,this.alertHeader,this.alertContent,{
    Key? key,
  }) : super(key: key);

  final String actionHeader;
  final String alertHeader;
  final String alertContent;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(actionHeader),
      backgroundColor: secondaryColor,
      labelStyle: TextStyle(color: Colors.white),
      onPressed: (){
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              title: Text(alertHeader),
              content:Text(alertContent),
              actions: [
                TextButton(onPressed: (){
                   Navigator.of(context).pop();
                }, child: Text("çıkış"))
              ],
            );
          }
        );
      }
      );
  }
}