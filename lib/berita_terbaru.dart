import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class BeritaTerbaru extends StatefulWidget {
  const BeritaTerbaru({super.key});

  @override
  State<BeritaTerbaru> createState() => _BeritaTerbaruState();
}

class _BeritaTerbaruState extends State<BeritaTerbaru> {
  List<Map<String, dynamic>> listBerita = [
    {
      "id": 1,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/11/cover-768x624.png",
      "title": "Jurusan Komputer dan Bisnis Resmi Punya Logo Baru",
      "date": "30 Nov 2023",
      "category": "Jurusan",
      "content":
          "Jurusan Komputer dan Bisnis resmi memiliki logo baru. Dengan logo yang baru diharapkan bisa semakin maju, kompak, dan lebih baik lagi kedepannya.",
    },
    {
      "id": 2,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/08/Cover-2-300x244.jpg",
      "title": "Prodi D3 Teknik Informatika Terakreditasi “BAIK SEKALI”",
      "date": "21 Agu 2023",
      "category": "Informatika",
      "content":
          "Sertifikat APS D3TI 2023 Program Studi Diploma Tiga Teknik Informatika Jurusan Komputer dan Bisnis Politeknik Negeri Cilacap Akhirnya Terakreditasi \"BAIK SEKALI\".",
    },
    {
      "id": 3,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/08/PKM-AI_Cover-300x244.jpg",
      "title": "PKM-AI “Pengembangan Virtual Tour Candi Cetho”",
      "date": "19 Agu 2023",
      "category": "Informatika",
      "content":
          "Terkagum dengan Prestasi Mira Sintiya, Indika Ade Pramesti, dan Nur Arifin dari Prodi D3 Teknik Informatika Jurusan Komputer dan Bisnis Politeknik Negeri Cilacap yang Telah Lolos Program Kreativitas Mahasiswa!",
    },
    {
      "id": 4,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/08/cover-dmi-300x244.png",
      "title": "Annisa Nurul Azhar Lolos Seleksi Duta Maritim Indonesia 2023",
      "date": "9 Agu 2023",
      "category": "Informatika",
      "content":
          "Prestasi gemilang kembali diraih oleh muda-mudi Indonesia dalam kancah internasional. Annisa Nurul Azhar, Mahasiswi Jurusan Teknik Informatika Politeknik Negeri Cilacap lolos seleksi Duta Maritim Indonesia 2023.",
    },
    {
      "id": 5,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/08/cover-300x244.jpg",
      "title": "Pelatihan DEA, Diharapkan Makin Banyak Inovasi UMKM",
      "date": "2 Agu 2023",
      "category": "Multimedia",
      "content":
          "Pada hari Senin sampai dengan selasa tanggal 31 Juli-1 Agustus 2023 telah dilaksanakan Pelatihan Digital Entrepneurship Academy (DEA) dengan Tema Pemasaran Digital Dasar di Kabupaten Cilacap. Hal ini merupakan kegiatan lanjutan dari pelatihan DEA pada 12-13 Juli 2023.",
    },
    {
      "id": 6,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/07/alks_1_cover-300x244.jpg",
      "title": "Mahasiswa ALKS Juara Olimpiade Akuntansi Vokasi",
      "date": "28 Jul 2023",
      "category": "Akuntansi",
      "content":
          "Selamat dan sukses kepada mahasiswa Prodi Akuntansi Lembaga Keuangan Syariah (ALKS) yang telah memperoleh dua kejuaraan pada ajang Olimpiade Akuntansi Vokasi tingkat Nasional tahun 2023 di Politeknik Negeri Balikpapan.",
    },
    {
      "id": 7,
      "photo":
          "https://jkb.pnc.ac.id/wp-content/uploads/2023/04/diskusi-tanyajawab-1024x683.jpg",
      "title": "Seminar Nasional Literasi Privasi Keamanan Data Digital",
      "date": "05 Jun 2023",
      "category": "Siber",
      "content":
          "Kegiatan Seminar Nasional Rekayasa Keamanan Siber merupakan salah satu rangkaian kegiatan yang diadakan oleh Program Studi Rekayasa Keamanan Siber Politeknik Negeri Cilacap dalam rangka meningkatkan kompetensi dan soft skill mahasiswa. Kegiatan seminar nasional menjadi satu rangkaian kegiatan dalam rangka memperingati hari jadi Program Studi Rekayasa Keamanan Siber yang pertama.",
    },
  ];

  final List<String> categories = [
    'Jurusan',
    'Informatika',
    'Siber',
    'Multimedia',
    'Akuntansi',
    'RPL',
  ];

  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterBerita = listBerita.where((berita) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(berita["category"]);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Berita Terbaru"),
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 2.0,
              children: categories
                  .map(
                    (category) => FilterChip(
                        selected: selectedCategories.contains(category),
                        label: Text(category),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              selectedCategories.add(category);
                            } else {
                              selectedCategories.remove(category);
                            }
                          });
                        }),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: filterBerita.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.textSearchVariant,
                          size: 80.0,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          "Berita Tidak Ditemukan!",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0 / 1.0,
                      crossAxisCount: 1,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: filterBerita.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = filterBerita[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Card(
                          surfaceTintColor: Colors.white,
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
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
                                        6.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item["title"],
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              MdiIcons.clockOutline,
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              item["date"],
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              MdiIcons.folderOpenOutline,
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              item["category"],
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Text(
                                      item["content"],
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                      ),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
