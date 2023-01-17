import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proje/common/appBar.dart';
import 'package:proje/common/appBarBack.dart';
import 'package:proje/main.dart';

import '../widgets/primary-button.dart';

class meditationScreen extends StatefulWidget {
  const meditationScreen({super.key});

  @override
  State<meditationScreen> createState() => _meditationScreenState();
}

class _meditationScreenState extends State<meditationScreen> {

  double containerPadding = 40;
  double containerRadius = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBackDesign(),
      body: Padding(
        padding: EdgeInsets.all(containerRadius),
        child: ListView(
          children:[Column(children: [
            Container(
              padding: EdgeInsets.all(containerPadding),
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color.fromARGB(255, 217, 217, 217),sixthColor], begin: Alignment.topCenter), 
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                  )
              ),
              child: Column(children: [
                Expanded(child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(20)),child: Image.asset("assets/images/gorsel4.jpeg"),)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Text("Müziğin Adı",style: Theme.of(context).textTheme.headline6,),
                ),
                const Text("Müziğin Sahibi"),
                Slider(value:0 , onChanged: ((value) => value)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Icon(Icons.save),
                      ),
                      const Expanded(
                        child: Icon(Icons.skip_previous),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black
                          ),
                          child: const Icon(Icons.play_arrow,color: Colors.white,),
                        )
                      ),
                      const Expanded(
                        child: Icon(Icons.skip_next),
                      ),
                      const Expanded(
                        child: Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ]),
        Container(
          padding: EdgeInsets.all(containerPadding / 2),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color:thirthColor),
            color:thirthColor,
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(containerRadius),
              bottomRight: Radius.circular(containerRadius),
              )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Expanded(child: Image.asset("assets/images/gorsel5.png")),
           Expanded(
            flex:3,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8.0),
               child: Container(
                 padding: const EdgeInsets.all(5),
                 decoration: const BoxDecoration(
                 ),
                 child: Text("Sıradaki, Muzik adı",style: Theme.of(context).textTheme.bodyText2,),
                 ),
             ),
           ),
           const Expanded(
            flex:2, 
            child: primaryButton("Şimdi çal",null),
          )
          ]),
        )]),
      ),
    );
  }
}
