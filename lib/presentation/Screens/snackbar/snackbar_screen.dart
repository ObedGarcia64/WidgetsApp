import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola, soy un snackbar'),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text('Dialogo de prueba'),
                content: const Text('Este es un dialogo de prueba'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cerrar'),
                  ),
                  FilledButton(onPressed: () {}, child: const Text('Aceptar')),
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  //El titulo de este dialogo viene desde el archivo de main.dart
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Elit sint culpa exercitation duis ad enim ea ex. Ex est nostrud magna in labore magna. Aliquip magna nisi exercitation sit dolor amet cupidatat ea ut culpa. Culpa exercitation incididunt est pariatur exercitation consequat. Anim excepteur aute dolore laboris duis mollit sunt. Qui laboris occaecat id occaecat pariatur eiusmod consequat dolore et.'),
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text("Mostrar dialogo")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
