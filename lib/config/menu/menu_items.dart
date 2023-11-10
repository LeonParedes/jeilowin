import 'package:flutter/material.dart';

class MenuItem{
  
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
});
}

List<MenuItem> appMenuItems = <MenuItem>[
  const  MenuItem(
    title:'Botones', 
    subTitle: 'Unos Botones', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
    ),
  
    const MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon:Icons.credit_card,
    
),
const MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
];