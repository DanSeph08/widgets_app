import 'package:flutter/material.dart' show IconData, Icons;
// SHOW Sirve para importar unicamente lo que vamos a utilizar, utilizarlo es la mejor practica

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

    MenuItems(
    title: 'Tarjetas',
    subTitle: 'Contenedor personalizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

];
