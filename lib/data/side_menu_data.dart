import 'package:ASEAN_MRC_2024/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon: Icons.waves, title: 'Mekong Detail'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.history, title: 'History'),
    MenuModel(icon: Icons.access_alarms, title: 'Alarm'),
    MenuModel(icon: Icons.logout, title: 'Sign Out'),
  ];
}
