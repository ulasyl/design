import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proje/common/appBarBack.dart';
import 'package:proje/main.dart';
import 'package:proje/screens/responsive.dart';
import 'package:proje/widgets/primary-button.dart';

class mainEducator extends StatefulWidget {
  const mainEducator({super.key});

  @override
  State<mainEducator> createState() => _mainEducatorState();
}

class _mainEducatorState extends State<mainEducator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/profil.png",width: 300,)
            ),
          Text("Danışman Adı",style: Theme.of(context).textTheme.displaySmall),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0),
            child: Text("Çevrimdışı",style: Theme.of(context).textTheme.bodyText2,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:30.0),
            child: primaryButton("Mesaj Gönder",responsive()),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: fifthColor,
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.bottomCenter,
            child: Text("Son Görüşmeler", style: TextStyle(
              color: secondaryColor
            ),)),
          Container(
            height: 250,
            child: ListView(
              shrinkWrap: true,
              children: [
                lastCall(),
                lastCall(),
                lastCall(),
                lastCall(),
                lastCall(),
              ],
            ),
          )
        ]),
     ]),
    );
  }
}

class lastCall extends StatelessWidget {
  const lastCall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Uzaktan Görüşme"),
      subtitle: Text("Görüşme Tarihi: 20/09/2030"),
      leading: Icon(Icons.timelapse),
      trailing: Text("15DK"),
    );
  }
}