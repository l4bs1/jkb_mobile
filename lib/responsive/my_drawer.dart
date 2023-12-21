import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../acara.dart';
import '../berita_terbaru.dart';
import '../informasi.dart';
import '../program_studi.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: SingleChildScrollView(
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
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Event'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Acara()),
                );
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.newBox),
              title: const Text('Berita Terbaru'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BeritaTerbaru()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
