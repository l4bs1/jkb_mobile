import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

const List imgData = [
  "images/prodi.jpg",
  "images/intro_info.jpg",
  "images/intro_event.jpg",
  "images/intro_news.jpg",
];

const List title = [
  "Program Studi",
  "Informasi",
  "Event",
  "Berita Terkini",
];

final myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      // const SizedBox(height: 50),
      const DrawerHeader(
        child: Icon(
          Icons.dashboard_outlined,
          size: 64.0,
        ),
      ),
      ListTile(
        leading: Icon(MdiIcons.listBoxOutline),
        title: const Text('Program Studi'),
      ),
      ListTile(
        leading: Icon(MdiIcons.volumeSource),
        title: const Text('Informasi'),
      ),
      const ListTile(
        leading: Icon(Icons.event),
        title: Text('Event'),
      ),
      ListTile(
        leading: Icon(MdiIcons.newBox),
        title: const Text('Berita Terkini'),
      ),
    ],
  ),
);
