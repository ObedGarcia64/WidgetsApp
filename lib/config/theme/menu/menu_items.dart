import 'package:flutter/material.dart';

class menuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const menuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <menuItem>[
  menuItem(
    title: 'Botones',
    subTitle: 'Ejemplos de botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  menuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor de tarjetas',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  menuItem(
    title: 'ProgressIndicator',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  menuItem(
    title: 'Snackbar y Dialogo',
    subTitle: 'Indicadores de pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
];
