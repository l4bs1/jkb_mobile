import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'responsive/responsive_dashboard.dart';
import 'responsive/mobile_dashboard.dart';
import 'responsive/desktop_dashboard.dart';
import 'responsive/tablet_dashboard.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.all(16),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          titleWidget: const Column(
            children: [
              Text(
                "Jurusan Komputer dan Bisnis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Politeknik Negeri Cilacap",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          bodyWidget: Text(
            "Selamat datang di Jurusan Komputer dan Bisnis Politeknik Negeri Cilacap! Kami dengan bangga mempersembahkan wadah digital ini sebagai sarana interaktif bagi seluruh mahasiswa, alumni, dan masyarakat yang tertarik dengan perkembangan dan kegiatan di jurusan ini.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[700],
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'images/JKB.png',
            width: 350,
            fit: BoxFit.contain,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Informasi',
          bodyWidget: const Text(
            "Temukan informasi terkini seputar kurikulum, jadwal kuliah, dan kegiatan akademis lainnya di bagian ini. Kami menyajikan berbagai sumber daya yang dapat membantu mahasiswa meraih kesuksesan akademis dan profesional, serta memastikan setiap individu terhubung dengan informasi terbaru di lingkungan kampus.",
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'images/intro_info.jpg',
            width: 350,
            fit: BoxFit.contain,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Event',
          bodyWidget: const Text(
            "Jangan lewatkan kesempatan untuk terlibat dalam berbagai event menarik yang diadakan oleh jurusan kami. Dari seminar teknologi hingga kegiatan kewirausahaan, setiap event dirancang untuk memperluas pengetahuan, keterampilan, dan jaringan hubungan antar mahasiswa serta dengan industri.",
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'images/intro_event.jpg',
            width: 350,
            fit: BoxFit.contain,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Berita Terkini',
          bodyWidget: const Text(
            "Dapatkan pembaruan terkini tentang berita dan prestasi terbaru dari Jurusan Komputer dan Bisnis Politeknik Negeri Cilacap. Kami berkomitmen untuk memberikan informasi relevan yang memperkaya pemahaman anda mengenai perkembangan terbaru di dunia teknologi informasi dan bisnis.",
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'images/intro_news.jpg',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const ResponsiveDashboard(
                  mobileDashboard: MobileDashboard(),
                  tabletDashboard: TabletDashboard(),
                  desktopDashboard: DesktopDashboard())),
        );
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        'Lewati',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      next: const Icon(Icons.arrow_forward),
      done: const Text(
        'Masuk',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
