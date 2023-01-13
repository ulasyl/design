import 'package:flutter/material.dart';
import 'package:proje/main.dart';


class AppBarBackDesign extends StatelessWidget implements PreferredSizeWidget{
  const AppBarBackDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){
        Navigator.of(context).pop();
      },),
      foregroundColor: secondaryColor,
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
