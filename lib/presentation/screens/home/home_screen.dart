import 'package:flutter/material.dart';
import 'package:jeilowin/config/menu/menu_items.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Menu Materia 3'),
      ),
      body: const _HomeView(),);
  }
}


class _HomeView extends StatelessWidget{
  const _HomeView();

  Widget build (BuildContext context){
return ListView.builder(
  itemCount: AppMenuItems.length,
  itemBuilder: menuList);
  }

  Widget menuList(BuildContext context, int index){
    final menuItem = AppMenuItems[index];
    final colors = Theme.of(context).colorScheme;
    return
    ListTile(
     leading: Icon(menuItem.icon, color: colors.primary),
     trailing: Icon(Icons.arrow_forward_ios_outlined,color: colors.primary),
     title: Text(menuItem.title),
     subtitle: Text(menuItem.subTitle),
     onTap: (){},
     );

     }
} 