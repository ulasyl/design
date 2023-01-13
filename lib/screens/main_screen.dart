import 'package:flutter/material.dart';
import 'package:proje/common/appBar.dart';
import 'package:proje/main.dart';
import 'package:proje/screens/meditation_screen.dart';
import 'package:proje/widgets/chip.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}


class _AnaEkranState extends State<AnaEkran> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final String ad_soyad="Misafir";

    return Scaffold(
      appBar: const AppBarDesign(),
      body: ListView(
        children:[Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Hoşgeldin, ${ad_soyad}", style: Theme.of(context).textTheme.headline5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text("bugün nasıl hissediyorsun?", style: TextStyle(color: secondaryColor, fontWeight: FontWeight.w200),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  status("Mutlu","Sevindirici","Tebrikler"),
                  status("Üzgün","Sorun Değil","Buradaki içerikleri dinleyebilirsin."),  
                  status("Sinirli","Sorun Değil","Buradaki içerikleri dinleyebilirsin."),  
                  status("Sakin","Sevindirici","Tebrikler"),          
                ],
              ),
            ),
            categoryCard(thirthColor,secondaryColor),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Önerilenler",style: Theme.of(context).textTheme.headline6,)
                ),
                Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: [
                    onerilenler(width: width),
                    onerilenler(width: width),
                    onerilenler(width: width),
                  ],
                ),
              ),
            ]),
           Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Eğitmenler",style: Theme.of(context).textTheme.headline6,)
                ),
                Container(
                height: 250,
                child: ListView(
                  shrinkWrap: false,
                  children: [
                    educator("Eğitmen adı","Eğitmen hakkında açıklama", true),
                    educator("Eğitmen adı","Eğitmen hakkında açıklama", false),
                    educator("Eğitmen adı","Eğitmen hakkında açıklama", true),
                    educator("Eğitmen adı","Eğitmen hakkında açıklama", true),
                    educator("Eğitmen adı","Eğitmen hakkında açıklama", false),
                  ],
                ),
              ),
            ])
          ]),
        ),
     ]),
    );
  }
}

class educator extends StatelessWidget {
  const educator(this.egitmenAdi,this.egitmenHakkindaBilgi,this.status,{
    Key? key,
  }) : super(key: key);

  final String egitmenAdi;
  final String egitmenHakkindaBilgi;
  final bool status;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(egitmenAdi),
      leading: Icon(Icons.supervised_user_circle),
      subtitle: Text(egitmenHakkindaBilgi),
      trailing: Container(
        padding: EdgeInsets.all(3),
        child:
        status ? const Text("Çevrimiçi",style:TextStyle(color: Colors.green)): Text("Çevrimdışı",style:TextStyle(color: Colors.black38))
         
      )
    );
  }
}
class onerilenler extends StatelessWidget {
  const onerilenler({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width/1.7,
        padding: EdgeInsets.all((20)),
        decoration: BoxDecoration(
          color: fourthColor,
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Column(children: [
          Expanded(
            child: Image.asset("assets/images/gorsel2.png"),
          ),
          Container(
            padding: const EdgeInsets.all(10),
          
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: secondaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
            child: Column(children: [
              Text("Parça adı", style: Theme.of(context).textTheme.titleLarge,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.play_circle, color: secondaryColor,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("20 dakika", style: TextStyle(color: secondaryColor),),
                  )
                ],
              )
            ],),)
        ]),
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  Color arkaplanrengi;
  Color buttonRengi;

  categoryCard(this.arkaplanrengi,this.buttonRengi,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: arkaplanrengi,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:30.0, horizontal: 15.0),
        child: Row(
          children: [
            Expanded(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("ABC Meditasyonu", style: Theme.of(context).textTheme.headline6,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit leo ut hendrerit vestibulum. ", 
                        style: TextStyle(color: secondaryColor, fontWeight: FontWeight.w200)),
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const meditationScreen()),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonRengi,
                      padding: EdgeInsets.all(15),
                      shadowColor: Colors.transparent,
                    ), 
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                      Text("Başla",style: TextStyle(fontWeight: FontWeight.w300),),
                      Icon(Icons.arrow_circle_right)
                    ],),
                    )
                  ],),
                ),
              ),
            ),
            Expanded(flex: 1,child: Image.asset("assets/images/gorsel1.png"))
          ],
        ),
      )
    );
  }
}
