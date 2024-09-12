import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class FirstAidController extends GetxController {
  RxInt currentindex = 0.obs;

  var title = "".obs;
  var desc = "".obs;

  void mainTitle() {
    switch (currentindex.value) {
      case 1:
        title.value = "Anti Histamines";
        desc.value =
            "Adalah obat yang digunakan untuk menghambat efek histamin, yaitu zat kimia yang dilepaskan oleh tubuh sebagai respons terhadap alergen. Histamin dapat menyebabkan gejala alergi seperti bersin, gatal, hidung berair, dan mata gatal. Antihistamines membantu meredakan gejala-gejala ini dengan menghalangi histamin dari berinteraksi dengan reseptornya.";
        break;
      case 2:
        title.value = "Inhaler";
        desc.value =
            "Perangkat medis yang digunakan untuk menghirup obat-obatan melalui mulut atau hidung. Obat-obatan dalam inhaler biasanya berupa aerosol atau bubuk kering yang dapat langsung masuk ke saluran pernapasan. Inhaler sering digunakan untuk mengobati kondisi seperti asma, bronkitis kronis, dan alergi.";
        break;
      case 3:
        title.value = "Perban";
        desc.value =
            "Bahan yang digunakan untuk membalut atau membungkus luka atau cedera pada tubuh. Perban biasanya terbuat dari kain, katun, atau bahan elastis lainnya yang dapat menempel pada kulit dengan mudah dan memberikan perlindungan terhadap luka. Fungsi utama perban adalah untuk melindungi luka dari kotoran dan infeksi, membantu menghentikan pendarahan, dan mendukung proses penyembuhan. Perban sering digunakan dalam pertolongan pertama dan dalam perawatan medis untuk cedera ringan hingga sedang.";
        break;
      case 4:
        title.value = "Penopang Kaki";
        desc.value =
            "Alat bantu yang digunakan untuk menopang dan melindungi kaki setelah mengalami retak atau patah tulang. Alat ini berfungsi untuk mencegah pergerakan tulang yang cedera, mengurangi beban pada kaki, dan menjaga posisi tulang agar dapat menyatu dengan sempurna. Jenis-jenis penopang kaki antara lain gips, ortosis, walker, dan kruk. Pemilihan jenis penopang kaki akan disesuaikan dengan jenis dan tingkat keparahan cedera.";
        break;
      case 5:
        title.value = "Salep Luka Bakar";
        desc.value =
            "Membantu mempercepat proses penyembuhan luka bakar dan mengurangi risiko komplikasi seperti infeksi. Namun, penting untuk menggunakan salep sesuai dengan petunjuk dokter atau farmasis, dan segera mencari bantuan medis jika luka bakar parah.";
        break;
      case 6:
        title.value = "Tablet Glucose";
        desc.value =
            "Suplemen makanan yang mengandung glukosa, yaitu gula sederhana yang merupakan sumber energi utama bagi tubuh. Tablet glukosa sering digunakan sebagai pengobatan darurat untuk hipoglikemia, yaitu kondisi ketika kadar gula darah terlalu rendah.";
        break;
      default:
        title.value = "Mewing";
        desc.value = "Mewing";
    }
  }
}
