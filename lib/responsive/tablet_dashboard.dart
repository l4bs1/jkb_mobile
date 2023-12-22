import 'package:flutter/material.dart';
import 'package:jkb_mobile/constants.dart';
import 'package:jkb_mobile/responsive/content_grid_view.dart';
import 'package:jkb_mobile/responsive/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),
      body: Container(
        color: primaryColor,
        height: h,
        width: w,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(),
              // height: h * 0.6,
              width: w * 0.4,
              child: Column(
                children: [
                  (w <= 800 && h <= 480)
                      ? const SizedBox(
                          height: 40.0,
                        )
                      : const SizedBox(
                          height: 40.0,
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (w <= 800 && h <= 480)
                          ? Image.asset(
                              "images/jkb_putih.png",
                              width: 42.0,
                              height: 42.0,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              "images/jkb_putih.png",
                              width: 64.0,
                              height: 64.0,
                              fit: BoxFit.fill,
                            ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      (w <= 800 && h <= 480)
                          ? const Text(
                              "Jurusan Komputer dan Bisnis",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          : const Text(
                              "Jurusan Komputer dan Bisnis",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                      (w <= 800 && h <= 480)
                          ? const Text(
                              "POLITEKNIK NEGERI CILACAP",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white70,
                              ),
                            )
                          : const Text(
                              "POLITEKNIK NEGERI CILACAP",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white70,
                              ),
                            )
                    ],
                  ),
                  (w <= 800 && h <= 480)
                      ? const SizedBox(
                          height: 8.0,
                        )
                      : const SizedBox(
                          height: 20.0,
                        ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 30.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (w <= 800 && h <= 480)
                                ? const Icon(
                                    Icons.call,
                                    size: 16.0,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.call,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "(0282) 533329",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "sekretariat@pnc.ac.id",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (w <= 800 && h <= 480)
                                ? const Icon(
                                    Icons.email,
                                    size: 16.0,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.email,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jl. Dr. Soetomo No. 1",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Sidakaya, Cilacap Selatan, \nJawa Tengah, 53212",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              // height: h * 0.4,
              width: w * 0.6,
              child: const ContentGridView(crossAxisCount: 2),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: Image.asset('images/wa.gif', width: 42),
        onPressed: () {
          launchUrl(Uri.parse('https://wa.me/6281128041000'));
        },
      ),
    );
  }
}
