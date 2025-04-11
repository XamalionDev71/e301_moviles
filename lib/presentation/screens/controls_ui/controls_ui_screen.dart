import 'package:flutter/material.dart';

class ControlsUiScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const ControlsUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controls + Tiles')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: Text('Developer Mode'),
          subtitle: Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        RadioListTile(
          title: Text('By Car'),
          subtitle: Text('Viajar por carro'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.car;
            });
          },
        ),
        RadioListTile(
          title: Text('By Plane'),
          subtitle: Text('Viajar por avión'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.plane;
            });
          },
        ),
        RadioListTile(
          title: Text('By Boat'),
          subtitle: Text('Viajar por barco'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.boat;
            });
          },
        ),
        RadioListTile(
          title: Text('By Submarine'),
          subtitle: Text('Viajar por submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.submarine;
            });
          },
        ),
      ],
    );
  }
}
