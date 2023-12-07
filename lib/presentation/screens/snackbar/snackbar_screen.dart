import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = "snackbar_screen";
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Officia mollit elit nostrud proident. Occaecat aliquip voluptate excepteur ullamco ut ut exercitation est reprehenderit dolore elit do excepteur. Commodo reprehenderit enim commodo consectetur veniam id labore non nostrud. Qui consectetur ipsum deserunt irure proident proident magna occaecat esse pariatur voluptate ipsum dolor. Commodo cillum aute cupidatat magna adipisicing elit labore nisi ullamco cupidatat ullamco. Labore elit qui in pariatur.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Ad labore occaecat Lorem laborum tempor excepteur sit sint laboris ipsum occaecat fugiat reprehenderit labore. Ex qui velit aliquip et duis. Aliqua labore esse sit magna dolore ad deserunt Lorem duis mollit. Incididunt enim ullamco enim nostrud anim sit est labore.')
                ]);
              },
              child: const Text('Licencias utilizadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
