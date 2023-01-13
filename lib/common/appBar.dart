import 'package:flutter/material.dart';
import 'package:proje/main.dart';


class AppBarDesign extends StatelessWidget implements PreferredSizeWidget{
  const AppBarDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu_outlined),
      foregroundColor: secondaryColor,
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
