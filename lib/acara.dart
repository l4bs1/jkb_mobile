import 'package:flutter/material.dart';
import 'package:jkb_mobile/constants.dart';

class Acara extends StatefulWidget {
  const Acara({super.key});

  @override
  State<Acara> createState() => _AcaraState();
}

class _AcaraState extends State<Acara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        title: const Text("Event"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: LayoutBuilder(
          builder: (context, constraint) {
            List items = [
              {
                "id": 1,
                "tanggal": "19",
                "bulan": "JUL",
                "title": "DEA | Pemasaran Digital Dasar – Batch 26",
                "photo":
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/07/WhatsApp-Image-2023-08-02-at-08.57.17-1024x1023.jpeg",
                "deskripsi":
                    "Pelatihan Pemasaran Digital Dasar merupakan pelatihan bagi umum, calon pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. Pelatihan Pemasaran Digital Dasar mempelajari tentang dasar kewirausahaan dan pengenalan terhadap pemasaran digital dengan menjelaskan konsep, praktek, dan diskusi kelompok.",
              },
              {
                "id": 2,
                "tanggal": "01",
                "bulan": "JUL",
                "title": "DEA | Pemasaran Digital Dasar – Batch 24",
                "photo":
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/07/WhatsApp-Image-2023-07-01-at-14.30.16-1024x1023.jpeg",
                "deskripsi":
                    "Pelatihan Pemasaran Digital Dasar merupakan pelatihan bagi umum, calon pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. Pelatihan Pemasaran Digital Dasar mempelajari tentang dasar kewirausahaan dan pengenalan terhadap pemasaran digital dengan menjelaskan konsep, praktek, dan diskusi kelompok.",
              },
              {
                "id": 3,
                "tanggal": "07",
                "bulan": "JUN",
                "title":
                    "Kuliah Umum: Tantangan dan Peluang Bank Syariah Digital",
                "photo":
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/06/kuliah-umum-alks-1024x1023.jpeg",
                "deskripsi":
                    "Program Studi Akuntansi Lembaga Keuangan Syariah (ALKS) Politeknik Negeri Cilacap, kembali selenggarakan Kuliah Umum dengan Tema “Tantangan dan Peluang Bank Syariah Digital di Indonesia” pada tanggal 14 Juni 2023, dimulai jam 09.00 sd 12.00 WIB bertempat di Auditorium Gedung Kuliah Bersama",
              },
              {
                "id": 4,
                "tanggal": "04",
                "bulan": "MEI",
                "title": "MUGI Purwokerto x PNC – Global Azure Indonesia 2023",
                "photo":
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/05/WhatsApp-Image-2023-05-04-at-18.01.58.jpeg",
                "deskripsi":
                    "Global Azure adalah event yang di selenggarakan secara global di berbagai negara di dunia. Di Indonesia kita namakan dengan nama event yaitu Global Azure Indonesia 2023.",
              },
              {
                "id": 5,
                "tanggal": "13",
                "bulan": "APR",
                "title": "Pelatihan GRATIS! VSGA – Junior Web Developer",
                "photo":
                    "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/dts-pnc-vsga-jwd-2023-2.png",
                "deskripsi":
                    "Junior Web Developer (JWD) merupakan salah satu tema pelatihan dalam Program Vocational School Graduate Academy (VSGA) Digital Talent Scholarship (DTS) 2023 yang berbasis Standar Kompetensi Kerja Nasional Indonesia (SKKNI) dengan skema Junior Web Developer (JWD).",
              },
            ];

            return Wrap(
              children: List.generate(
                items.length,
                (index) {
                  var item = items[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 16.0),
                    child: Banner(
                      message: "CLOSED",
                      location: BannerLocation.topEnd,
                      color: Colors.red,
                      textStyle: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              item["photo"],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.black26,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.black54,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  item["deskripsi"],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item["bulan"],
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      item["tanggal"],
                                      style: const TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
