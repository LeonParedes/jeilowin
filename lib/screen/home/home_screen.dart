import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jeilowin/presentation/widgets/appBars/app_bar_custom.dart';

import '../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget with AppBarCustom {
  static const String screenName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:appBarWithOutReturnButton(title: screenName),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) => _ListTile(
              menuItem: appMenuItems[index],
            ));
  }
}

Widget menuList(BuildContext context, int index) {
  final menuItem = appMenuItems[index];
  return Text(menuItem.title);
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    super.key,
    required this.menuItem,
  });
  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
        leading: Icon(menuItem.icon, color: colors.primary),
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
        hoverColor: Color.fromARGB(255, 64, 255, 245),
        splashColor: const Color.fromARGB(255, 68, 255, 124),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle),
        onTap: () {
          context.push(menuItem.link);
        });
  }
}
