import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'informasi.dart';
import 'program_studi.dart';

const primaryColor = Color(0xff253b80);

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

const myDrawer = MyDrawer();

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.dashboard_outlined,
              size: 64.0,
            ),
          ),
          ListTile(
            leading: Icon(MdiIcons.listBoxOutline),
            title: const Text('Program Studi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProgramStudi()),
              );
            },
          ),
          ListTile(
            leading: Icon(MdiIcons.volumeSource),
            title: const Text('Informasi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Informasi()),
              );
            },
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
  }
}
