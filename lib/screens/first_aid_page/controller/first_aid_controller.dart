import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class FirstAidController extends GetxController {
  RxInt currentindex = 0.obs;

  var title = "".obs;
  var desc = "".obs;

  void mainTitle() {
    switch (currentindex.value) {
      case 1:
        title.value = "Alergi/Anafilaksis";
        desc.value =
            "Debu, serbuk sari, makanan, maupun pemicu lainnya yang pada dasarnya tidak berbahaya dapat memunculkan beragam reaksi alergi. Ada penderita alergi yang mungkin hanya menunjukkan gejala ringan, tapi ada pula orang-orang yang mengalami reaksi parah sehingga memerlukan pertolongan pertama.\n \n Beberapa penderita alergi berisiko mengalami reaksi parah yang dikenal sebagai syok anafilaksis. Reaksi langka ini menyebabkan penyempitan saluran napas dan penurunan tekanan darah secara drastis yang akan bertambah parah bila tidak segera ditangani.";
        break;
      case 2:
        title.value = "Serangan Asma";
        desc.value =
            "Asma bisa membuat penderitanya sulit bernapas. Saat serangan asma datang, saluran napas akan membengkak, menyempit, dan menghasilkan banyak lendir. Kondisi ini bisa terjadi pada siapa saja, tidak peduli berapa usia dan apa jenis kelaminnya. Mulai dari bayi hingga orang dewasa, baik wanita maupun pria. \n \n Faktor pemicu terjadinya serangan asma berbeda pada setiap orang. Hal-hal yang dapat memicu munculnya gejala asma dapat berupa debu, asap rokok, bulu hewan, kelelahan, stres, atau efek samping obat.Walaupun tidak dapat disembuhkan, kemunculan gejala penyakit asma setidaknya bisa diantisipasi dan dicegah. Dengan pengobatan yang tepat, gejala asma dapat dikendalikan sehingga tidak mengganggu kehidupan penderitanya.";
        break;
      case 3:
        title.value = "Perdarahan";
        desc.value =
            "Perdarahan adalah peristiwa keluarnya darah sebagai akibat pembuluh darah yang mengalami kerusakan. Hal ini dapat terjadi di bagian luar maupun dalam tubuh, dan biasanya disebabkan oleh cedera (tertusuk, tersayat, tergores, dan terbentur) dan penyakit bawaan yang berkaitanApabila tidak menerima perawatan, korban akan terus kehilangan darah dari pembuluh darah yang pecah hingga mengalami perdarahan akut (Hemorrhagia) yang bersifat fatal.Dengan perawatan yang tepat, biasanya perdarahan pada korban akan berhenti dengan sendirinya kecuali korban mengidap Hemofilia (Kelainan pada keping darah) yang mencegah darah untuk membeku.";
        break;
      case 4:
        title.value = "Patah Tulang";
        desc.value =
            "Fraktur Patah tulang atau fraktur adalah kondisi ketika keutuhan susunan tulang di dalam tubuh terputus (patah). Kondisi ini bisa terjadi di bagian tulang mana saja, namun lebih sering terjadi pada tulang tangan, pinggul, selangka, lengan atas, dan kaki.Tidak hanya itu, fraktur juga dapat dipicu oleh kondisi tulang yang lemah, sehingga membuat tulang menjadi mudah patah. Adapun penyakit atau gangguan muskuloskeletal yang dapat menyebabkan tulang menjadi lemah adalah tumor tulang, osteogenesis imperfekta, infeksi tulang, atau osteoporosis.";
        break;
      case 5:
        title.value = "Luka Bakar";
        desc.value =
            "Luka bakar merupakan kondisi ketika adanya kerusakan kulit yang disebabkan oleh panas, bahan kimia, listrik, radiasi, atau matahari. Dokter biasanya menentukan keseriusan (derajat) luka berdasarkan kedalaman luka dan jumlah kulit yang terkena. Kondisi ini bisa menyakitkan dan menyebabkan infeksi jika tidak diobati. Kondisi luka tingkat pertama, dan sebagian besar luka bakar tingkat dua, sembuh dengan perawatan di rumah. Sementara itu luka tingkat tiga dapat mengancam jiwa dan memerlukan perawatan medis khusus.";
        break;
      case 6:
        title.value = "Keadaan Darurat Diabetes";
        desc.value =
            "Keadaan darurat diabetes adalah kondisi kesehatan serius yang dapat terjadi pada penderita diabetes. Kondisi ini terjadi karena fluktuasi kadar gula darah, baik yang terlalu tinggi (hiperglikemia) maupun yang terlalu rendah (hipoglikemia).";
        break;
      case 7:
        title.value = "Tersedak";
        desc.value =
        "Tersedak atau choking adalah kondisi ketika saluran napas tersumbat oleh benda asing, seperti makanan, air, atau benda lainnya.  Sumbatan ini bisa terjadi secara total atau parsial, dan dapat menyebabkan kesulitan bernapas.";
        break;
      case 8:
        title.value = "Distress";
        desc.value =
        "Distreess adalah suatu keadaan penderitaan mental yang dapat melibatkan berbagai gejala. Tekanan emosional dapat diakibatkan oleh masalah kesehatan mental atau keadaan tertentu, seperti kesulitan dalam hubungan atau tekanan keuangan.";
        break;
      default:
        title.value = "Mewing";
        desc.value = "Mewing";
    }
  }
}
