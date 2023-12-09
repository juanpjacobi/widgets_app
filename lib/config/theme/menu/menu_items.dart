import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Statefull widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI controls + Tiles',
      subtitle: 'Una serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'UI controls + Tiles',
      subtitle: 'Una serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'App tutorial',
      subtitle: 'Pequeño tutorial introductorio',
      link: '/ui-controls',
      icon: Icons.accessibility_new_rounded),
];
