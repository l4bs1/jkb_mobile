import 'package:flutter/material.dart';
import 'package:jkb_mobile/constants.dart';
import 'package:jkb_mobile/responsive/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'content_grid_view.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

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
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              height: h * 0.35,
              width: w,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/jkb_putih.png",
                        width: 64.0,
                        height: 64.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        "Jurusan Komputer dan Bisnis",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "POLITEKNIK NEGERI CILACAP",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.call,
                            size: 24.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Column(
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email,
                            size: 24.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Column(
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
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: h * 0.65,
              width: w,
              child: const ContentGridView(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
