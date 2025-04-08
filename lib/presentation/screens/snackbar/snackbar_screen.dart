import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Hola Mundo!'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text('Estas seguro?'),
            content: Text(
              'Elit mollit fugiat sit nostrud cupidatat commodo labore mollit commodo. Et officia eiusmod nostrud laborum excepteur ad. Et occaecat pariatur eiusmod deserunt. Nulla reprehenderit sit fugiat do. Id nulla ea exercitation irure nisi duis ad.',
            ),
            actions: [
              TextButton(onPressed: ()=>context.pop(), child: Text('Cancelar')),
              FilledButton(onPressed: ()=>context.pop(), child: Text('Aceptar')),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars/Diálogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [Text('Aliqua amet tempor qui enim pariatur id ea elit nulla occaecat et nostrud. Fugiat eiusmod ullamco in commodo consectetur deserunt ea ad. Ad mollit sunt officia ipsum enim excepteur sint Lorem cillum culpa.')]);
              },
              child: Text("Licencias Utilizadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text("Mostrar Diálogo"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
