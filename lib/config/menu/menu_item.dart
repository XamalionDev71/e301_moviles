import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

final appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Estilos de botones',
    link: '/botones',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Estilos de tarjetas',
    link: '/tarjetas',
    icon: Icons.credit_card,
  ),
];


