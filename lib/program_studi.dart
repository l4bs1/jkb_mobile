import 'package:flutter/material.dart';

class ProgramStudi extends StatelessWidget {
  const ProgramStudi({super.key});

  @override
  Widget build(BuildContext context) {
    List prodi = [
      {
        "label": "Diploma III \nTeknik Informatika",
        "image": "https://jkb.pnc.ac.id/wp-content/uploads/2023/03/cover.jpg",
      },
      {
        "label": "Sarjana Terapan \nRekayasa Keamanan Siber",
        "image":
            "https://jkb.pnc.ac.id/wp-content/uploads/2023/02/rks-headerr-768x254-2.png",
      },
      {
        "label": "Sarjana Terapan \nTeknologi Rekayasa Multimedia",
        "image":
            "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/trm-1450x480-1.png",
      },
      {
        "label": "Sarjana Terapan \nAkuntansi Lembaga Keuangan Syariah",
        "image":
            "https://jkb.pnc.ac.id/wp-content/uploads/2023/06/alks-header-2-1-1450x480-1.jpg",
      },
      {
        "label": "Sarjana Terapan \nRekayasa Perangkat Lunak",
        "image": "https://jkb.pnc.ac.id/wp-content/uploads/2023/03/cover2.png",
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            expandedHeight: 180.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Program Studi'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/DJI_0011-scaled.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.0, 0.8),
                        end: const Alignment(0.0, 1.0),
                        colors: <Color>[
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
            ),
          ),
          SliverList.builder(
            itemCount: prodi.length,
            itemBuilder: (BuildContext context, int index) {
              var item = prodi[index];
              return (index != 4)
                  ? Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 16, right: 16, bottom: 8),
                      child: Container(
                        height: 150.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              item["image"],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item["label"],
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 16, right: 16, bottom: 8),
                      child: ClipRect(
                        child: Banner(
                          message: "Coming Soon",
                          location: BannerLocation.topEnd,
                          color: Colors.red,
                          child: Container(
                            height: 150.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.3),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      item["label"],
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   top: 0,
                                //   right: 0,
                                //   child: Container(
                                //     padding: const EdgeInsets.all(8.0),
                                //     decoration: const BoxDecoration(
                                //       color: Colors.red,
                                //       borderRadius: BorderRadius.only(
                                //         bottomLeft: Radius.circular(20),
                                //       ),
                                //     ),
                                //     child: const Text(
                                //       "Comming Soon!",
                                //       style: TextStyle(
                                //         fontSize: 16.0,
                                //         color: Colors.white,
                                //         fontWeight: FontWeight.bold,
                                //         fontStyle: FontStyle.italic,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
