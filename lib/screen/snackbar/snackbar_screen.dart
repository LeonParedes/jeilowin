import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/widgets/appBars/app_bar_custom.dart';
import 'snack_bar_custom.dart';


class SnackBarScreen extends StatelessWidget
    with AppBarCustom, CustomSnackBars {
  static const screenName = 'snackbar_screen';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithOutReturnButton(title: screenName),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => toShowSnackBarCustom(context,
              snackBarContent: const Text('Jaguar u Leo')),
          label: const Text('Mostrar SnackBar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
      body: const Center(child: _ShowButtonsList()),
    );
  }
}

class _ShowButtonsList extends StatelessWidget {
  const _ShowButtonsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Aunque Flutter llevará a cabo todas las acciones necesarias para subsanar los fallos o errores en los contenidos de esta página web, para mantenerlos actualizados en todo momento, para reestablecer la comunicación cuando existan fallos en el acceso a la web y para mantener el portal en continuo funcionamiento y disponible, no puede garantizar ninguno de estos extremos.')
              ]);
            },
            child: const Text('Licencias usadas')),
        FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar Diálogo'))
      ],
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estas Seguro?'),
              content: const Text(
                  'Aunque Flutter llevará a cabo todas las acciones necesarias para subsanar los fallos o errores en los contenidos de esta página web, para mantenerlos actualizados en todo momento, para reestablecer la comunicación cuando existan fallos en el acceso a la web y para mantener el portal en continuo funcionamiento y disponible, no puede garantizar ninguno de estos extremos.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }
}
