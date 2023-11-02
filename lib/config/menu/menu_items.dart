import 'package:flutter/material.dart';

class MenuItem{
  final String screenName;
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  
  const MenuItem(
    {
      required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      required this.screenName
});
}

List<MenuItem> appMenuItems = <MenuItem>[
  const  MenuItem(
    title:'Botones', 
    subTitle: 'Unos Botones', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
    screenName: 'button_screen'),
  
    const MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon:Icons.credit_card,
    screenName: 'card_screen')
];