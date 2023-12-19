import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jkb_mobile/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Informasi extends StatefulWidget {
  const Informasi({super.key});

  @override
  State<Informasi> createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  final List<Map<String, dynamic>> _listInformasi = [
    {
      "id": 1,
      "tanggal": "27",
      "bulan": "AGU",
      "title": "Jadwal Perkuliahan Semester Gasal TA 2023/2024"
    },
    {
      "id": 2,
      "tanggal": "07",
      "bulan": "AGU",
      "title":
          "Penerima Bantuan Subsidi UKT/SPP Ikatan Orang Tua Mahasiswa (IOM)"
    },
    {
      "id": 3,
      "tanggal": "07",
      "bulan": "AGU",
      "title": "Penerima Beasiswa Prestasi Ikatan Orang Tua Mahasiswa (IOM)"
    },
    {
      "id": 4,
      "tanggal": "05",
      "bulan": "JUL",
      "title": "Jadwal UAS Teori Semester Genap TA 2022/2023"
    },
    {
      "id": 5,
      "tanggal": "26",
      "bulan": "JUN",
      "title": "Cuti Bersama Hari Raya Idul Adha 1444 Hijriah"
    },
    {
      "id": 6,
      "tanggal": "14",
      "bulan": "JUN",
      "title": "Diseminasi Pengembangan Ekosistem SDM Keamanan Siber dan Sandi"
    },
    {
      "id": 7,
      "tanggal": "06",
      "bulan": "JUN",
      "title":
          "Pemberitahuan Ujian Akhir Semester Genap Tahun Akademik 2022/2023"
    },
    {
      "id": 8,
      "tanggal": "30",
      "bulan": "MEI",
      "title":
          "Surat Edaran Pelaksanaan Magang Industri Prodi D3 Teknik Informatika"
    },
    {
      "id": 9,
      "tanggal": "02",
      "bulan": "MEI",
      "title":
          "Perubahan Nomenklatur dan Pembetukan Jurusan pada Politeknik Negeri Cilacap"
    },
    {
      "id": 10,
      "tanggal": "26",
      "bulan": "APR",
      "title": "Pelaksanaan UTS Genap Tahun Akademik 2022/2023"
    },
  ];

  List<Map<String, dynamic>> _cariInformasi = [];

  @override
  void initState() {
    _cariInformasi = _listInformasi;
    super.initState();
  }

  void _filterInformasi(String keyword) {
    List<Map<String, dynamic>> hasil = [];
    if (keyword.isEmpty) {
      hasil = _listInformasi;
    } else {
      hasil = _listInformasi
          .where((input) => input["title"]
              .toString()
              .toLowerCase()
              .contains(keyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _cariInformasi = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        title: const Text("Informasi"),
        centerTitle: true,
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) => _filterInformasi(value),
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
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: _cariInformasi.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MdiIcons.textSearchVariant,
                            size: 80.0,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text(
                            "Informasi Tidak Ditemukan!",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: _cariInformasi.length,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {},
                          child: Card(
                            key: ValueKey(_cariInformasi[index]["id"]),
                            elevation: 4,
                            clipBehavior: Clip.antiAlias,
                            child: Row(
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  width:
                                      MediaQuery.of(context).size.width * 0.17,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: primaryColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        _cariInformasi[index]["bulan"]
                                            .toString(),
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        _cariInformasi[index]["tanggal"]
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    color: Colors.transparent,
                                    child: Text(
                                      _cariInformasi[index]["title"],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
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
      ),
    );
  }
}
