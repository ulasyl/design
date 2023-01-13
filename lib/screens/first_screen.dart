import 'package:flutter/material.dart';
import 'package:proje/main.dart';
import 'package:proje/screens/login_screen.dart';
import 'package:proje/screens/register_screen.dart';
import 'package:proje/screens/responsive.dart';
import 'package:proje/widgets/primary-button.dart';

class karsilama extends StatefulWidget {
  const karsilama({super.key});

  @override
  State<karsilama> createState() => _karsilamaState();
}

class _karsilamaState extends State<karsilama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: PageView(
            padEnds: false,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: mainColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Lorem ipsum dolor sit amet,",style: Theme.of(context).textTheme.displaySmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Text("consectetur adipiscing elit. Aenean elementum pellentesque",style: TextStyle(
                      color: secondaryColor
                    ),),
                  ),
                  AspectRatio(
                    aspectRatio: 16/15,
                    child: Image.asset("assets/images/gorsel1.png",height: 300)), 
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text("Kaydırarak devam ediniz."),
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: thirthColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Lorem ipsum dolor sit amet,",style: Theme.of(context).textTheme.displaySmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Text("consectetur adipiscing elit. Aenean elementum pellentesque",style: TextStyle(
                      color: secondaryColor
                    ),),
                  ),
                  AspectRatio( 
                    aspectRatio: 16/15,
                    child: Image.asset("assets/images/gorsel1.png",height: 300)), 
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text("Kaydırarak devam ediniz."),
                  )
                ])
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: fourthColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Lorem ipsum dolor sit amet,",style: Theme.of(context).textTheme.displaySmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Text("consectetur adipiscing elit. Aenean elementum pellentesque",style: TextStyle(
                      color: secondaryColor
                    ),),
                  ),
                  AspectRatio( 
                    aspectRatio: 16/15,
                    child: Image.asset("assets/images/gorsel1.png",height: 300)), 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: primaryButton("Giriş Yap",Login()),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: primaryButton("Kayıt ol",Register()),
                          ),
                        ),
                      ],
                    )
                  ,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const responsive()),
                    );
                  }, child: const Text("Üyeliksiz devam et"))
                ])
              ),
            ],
           ),
     )
    );
  }
}