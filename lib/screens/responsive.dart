import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proje/screens/main_screen.dart';
import 'package:proje/screens/meditation_screen.dart';

class responsive extends StatefulWidget {
  const responsive({super.key});

  @override
  State<responsive> createState() => _responsiveState();
}

class _responsiveState extends State<responsive> {
  
    checkDevice(double width){
    if(width <= 576){
      return "mobile";
    }else if(width <= 768){
      return "tablet";
    }else if(width <= 1024){
      return "desktop";
    }else{
      return "large";
    }
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.width;
    var kontrol = checkDevice(width);
    
    if(kontrol == "mobile"){
      return const AnaEkran();
    }else if(kontrol == "tablet"){
      return const AnaEkran();
    }else if(kontrol == "desktop" || kontrol == "large"){
      return Row(children: const [
        Expanded(child: AnaEkran()),
        Expanded(child: meditationScreen())
      ],);
    }
    return const Scaffold();

  }
}