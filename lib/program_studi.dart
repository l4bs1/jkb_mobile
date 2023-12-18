import 'package:flutter/material.dart';

class ProgramStudi extends StatefulWidget {
  const ProgramStudi({super.key});

  @override
  State<ProgramStudi> createState() => _ProgramStudiState();
}

class _ProgramStudiState extends State<ProgramStudi> {
  List prodi = [
    {
      "label": "Diploma III \nTeknik Informatika",
      "image":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/02/IMG_3033-scaled-1.jpg",
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
  ];

  @override
  Widget build(BuildContext context) {
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
              return Padding(
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
                        child: Text(
                          item["label"],
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Program Studi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/DJI_0011-scaled.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                ),
                child: const Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          radius: 64.0,
                          backgroundImage: NetworkImage(
                            "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/DJI_0017-scaled.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
              ),
            ),
            Builder(builder: (context) {
              List prodi = [
                {
                  "label": "Diploma III \nTeknik Informatika",
                  "image":
                      "https://jkb.pnc.ac.id/wp-content/uploads/2023/02/IMG_3033-scaled-1.jpg",
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
                  "label":
                      "Sarjana Terapan \nAkuntansi Lembaga Keuangan Syariah",
                  "image":
                      "https://jkb.pnc.ac.id/wp-content/uploads/2023/06/alks-header-2-1-1450x480-1.jpg",
                },
              ];

              return ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: prodi.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = prodi[index];
                  return Container(
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
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
                          child: Text(
                            item["label"],
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
