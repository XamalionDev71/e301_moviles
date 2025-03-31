import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Wrap(
          spacing: 20,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: Text('Elevated Button')
            ),
            ElevatedButton(
              onPressed: null, 
              child: Text('Disable Elevated Button')
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              label: Text('Elevated Button Icon'),
              icon: Icon(Icons.alarm)
            ),
            FilledButton(
              onPressed: (){},
              child: Text('Filled Button'),
            ),
            FilledButton.icon(
              onPressed: (){},
              label: Text('Filled Button Icon'),
              icon: Icon(Icons.system_security_update_rounded),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: (){},
              label: Text('Outlined Icon Button'),
              icon: Icon(Icons.texture)
            ),
            TextButton(onPressed: (){},
              child: Text('Text Button')
            ),
            IconButton(onPressed: (){},
              icon: Icon(Icons.rule_folder)
            ),
            IconButton(onPressed: (){},
              icon: Icon(Icons.api),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
