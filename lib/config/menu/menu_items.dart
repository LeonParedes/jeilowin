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
      subTitle: 'un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
    const MenuItem(
      title: 'ProgressIndicators',
      title: 'Progress  Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
    const MenuItem(
      title: 'snackbar y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),    
];