import '../identify_quiz_model/identify_quiz_model.dart';

class IdentifyModel {
  final String imagePath;
  final String title;
  final List<String> steps;
  final String bab;
  final String subBab;
  final List<QuizModel> quizzes;

  IdentifyModel({
    required this.imagePath,
    required this.title,
    required this.steps,
    required this.bab,
    required this.subBab,
    required this.quizzes,
  });
}

final IdentifyModel syokAnafilaksis = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Penanganan terhadap syok anafilaksis',
  steps: [
    '1. Segera hubungi ambulans atau nomor darurat rumah sakit terdekat.',
    '2. Tanyakan apakah pasien membawa suntikan epinefrin. Jika pasien tidak mampu menyuntikkannya sendiri, bantu pasien untuk menyuntik pahanya.',
    '3. Baringkan pasien dalam posisi telentang.',
    '4. Kendurkan bagian pakaian yang ketat, lalu tutupi badan pasien dengan selimut atau kain yang tersedia.',
    '5. Jika pasien muntah atau mengeluarkan darah dari mulut, ubah posisi badannya hingga menghadap ke samping untuk mencegahnya tersedak.',
    '6. Jangan berikan minuman atau cairan apa pun yang bisa membuatnya tersedak.',
    '7. Jika pasien tidak mampu bernapas atau bergerak, segera lakukan resusitasi jantung-paru (RJP). Langkah-langkahnya akan dijelaskan lebih lanjut.',
    '8. Jika kondisi pasien sudah mulai normal, tetap awasi gejalanya. Syok anafilaksis bisa muncul kembali dalam beberapa jam ke depan.',
  ],
  bab: 'Alergi',
  subBab: '1.1 Syok Anafilaksis',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel epinefrin = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Cara menggunakan epinefrin (EpiPen)',
  steps: [
    'Epinefrin merupakan obat alergi darurat yang bekerja cepat dan sangat penting bagi orang yang berisiko mengalami anafilaksis. Mengingat anafilaksis dapat berakibat fatal, kamu harus menggunakan obat ini segera setelah reaksi alergi parah mulai terlihat.',
    '1. Keluarkan alat suntik dari tabung pembawanya dengan hati-hati.',
    '2. Pegang alat suntik menggunakan tangan dominan dengan ujung oranye berada di bawah. Pastikan jari kamu tidak terlalu dekat ke ujung alat suntik.',
    '3. Gunakan tangan satunya untuk menarik segel keamanan berwarna biru. Tarik ke atas dan jangan memutar atau membengkokkannya.',
    '4. Suntikkan ujung oranye ke bagian tengah paha atas. Dorong hingga terdengar suara ‘klik’. Ini berarti epinefrin sudah memasuki tubuh kamu.',
    '5. Tahan alat suntik setidaknya selama tiga detik, kemudian tarik kembali.',
    '6. Usap lembut area kulit yang disuntik selama sepuluh detik.',
    '7. Telepon ambulans atau nomor darurat rumah sakit terdekat.',
  ],
  bab: 'Alergi',
  subBab: '1.2 Epipen',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel resutasiJantungParu = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Cara Melakukan Resutasi Jantung-Paru',
  steps: [
    'RJP merupakan pertolongan pertama bila penderita alergi parah tidak dapat bernapas. Teknik ini akan menghabiskan tenaga penolong, jadi pastikan kamu bersama orang lain dan sudah menghubungi ambulans untuk mendapatkan bantuan medis.',
    '1. Apabila tangan dominan kamu adalah tangan kanan, letakkan pangkal tangan kiri kamu di tengah dada pasien.',
    '2. Letakkan tangan kanan kamu di atas tangan kiri, lalu kunci jari-jarinya.',
    '3. Posisikan tubuh kamu sedemikian rupa agar bahu kamu tepat berada di atas tangan.',
    '4. Gunakan berat badan kamu (bukan cuma kekuatan lengan) untuk menekan dada pasien kira-kira sedalam 5 – 6 cm.',
    '5. Kurangi tekanan dan biarkan dada pasien kembali ke posisinya semula.',
    '6. Ulangi menekan dada pasien sebanyak 100 – 120 kali dalam satu menit hingga ambulans tiba atau kamu kelelahan.',
  ],
  bab: 'Alergi',
  subBab: '1.3 RJP',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel mengalamiAsma = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pertama pada Asma',
  steps: [
    'Jika kamu sedang mengalami serangan asma, tetaplah tenang dan lakukan langkah-langkah pertolongan pertama pada asma berikut ini : ',
    '1. Duduk dan ambil napas pelan-pelan dengan stabil',
    '2. Cobalah untuk tetap tenang, karena panik justru akan semakin memperparah serangan asma',
    '3. Semprotkan obat inhaler untuk asma setiap 30–60 detik, maksimal 10 semprotan',
    '4. Hubungi ambulans jika kamu tidak memiliki inhaler, asma bertambah parah meski sudah menggunakan inhaler, tidak ada perbaikan meski sudah menyemprotkan inhaler sebanyak 10 kali, atau jika kamu merasa khawatir',
    '5. Ulangi langkah ketiga jika ambulans belum tiba dalam waktu 15 menit',
  ],
  bab: 'Asma',
  subBab: '1.1 Asma',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel orangLainMengalamiAsma = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pertama pada Orang lain yang mengalami Asma',
  steps: [
    'Apabila melihat orang lain sedang mengalami serangan asma, kamu bisa membantunya dengan mempraktikkan pertolongan pertama pada asma berikut ini : ',
    '1. Hubungi ambulans',
    '2. Bantulah orang tersebut untuk duduk tegak dengan nyaman, sambil melonggarkan pakaiannya agar tidak sesak',
    '3. Tanyakan faktor pencetus asma dan jauhkan penderita dari kemungkinan pencetusnya, seperti debu, udara dingin, atau hewan peliharaan',
    '4. Jika orang tersebut memiliki obat asma, seperti inhaler, bantu dia untuk menggunakannya',
    '5. Jika dia tidak memiliki inhaler, gunakan inhaler yang ada di kotak P3K, jangan menggunakan obat inhaler dari penderita asma yang lain',
    '6. Setelah itu, tempelkan mouthpiece pada mulut penderita dan usahakan agar mulut penderita menutupi seluruh ujung mouthpiece',
    '7. Ketika penderita mengambil napas perlahan-lahan, tekan inhaler satu kali. Minta dia agar tetap mengambil napas pelan-pelan dan sedalam mungkin, kemudian tahan napas selama 10 detik',
    '8. Semprotkan inhaler sebanyak empat kali, dengan jarak waktu sekitar 1 menit tiap kali semprotan',
    '9. Setelah empat semprotan, tunggu hingga 4 menit. Jika masih sulit bernapas, berikan empat semprotan lagi dengan jarak waktu yang sama',
    '10. Setelah empat semprotan, tunggu hingga 4 menit. Jika masih sulit bernapas, berikan empat semprotan lagi dengan jarak waktu yang sama',
    '11. Jika tetap tidak ada perubahan, berikan empat semprotan inhaler setiap 4 menit sekali, sampai ambulans tiba',
    '12. Jika asma nya berat, semprotkan inhaler sebanyak 6 - 8 kali setiap 5 menit',
    '13. Lakukan langkah pertolongan diatas sambil menunggu bantuan datang, dan jangan tinggalkan penderita asma sendirian.',
  ],
  bab: 'Asma',
  subBab: '1.2 Pertolongan pertama pada Orang lain yang mengalami Asma',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel perdarahanLuarBerat = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pada Perdarahan Luar Berat',
  steps: [
    'Perdarahan Luar Berat yang bersifat fatal seperti perdarahan arteri dan vena dapat ditangani dengan langkah-langkah berikut : ',
    '1. Tetap tenang dan hubungi nomor darurat 112 atau 119 saat menemukan korban mengalami perdarahan arteri.',
    '2. Jangan memindahkan korban jika belum memiliki pengetahuan mengenai pemindahan korban. Cukup singkirkan benda-benda berbahaya di sekitar korban.',
    '3. Lepaskan pakaian di sekitar luka dan temukan sumber keluarnya darah.',
    '4. Jika korban mengalami luka tusuk yang cukup dalam, hindari untuk mengeluarkannya.',
    '5. Bila bukan karena tertancap benda tajam, cobalah hentikan perdarahan dengan menekan kuat bagian perdarahan menggunakan kain atau kasa.',
    '6. Bungkus luka dengan perban tebal atau kain bersih dan selotip. Kemudian, angkat bagian tubuh yang terluka di lebih tinggi dari jantung jika memungkinkan.',
    '7. Bantu korban untuk berbaring dengan tenang di atas alas dan tinggikan kaki jika terlihat tanda-tanda korban mengalami syok.',
    '8. Setelah selesai, cuci tangan Anda atau mandi dan berganti pakaian untuk mencegah risiko penularan penyakit tertentu melalui darah korban.',
  ],
  bab: 'Perdarahan',
  subBab: '1.1 Pertolongan pada Perdarahan Luar Berat',
  quizzes: [
    QuizModel(
      question: '1. Apa warna darah yang umumnya keluar saat terjadi perdarahan arteri?',
      options: [
        'Merah Tua',
        'Merah Cerah',
        'Kuning',
        'Coklat'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Apa gejala umum muncul pada perdarahan dalam otot?',
      options: [
        'Muntah darah',
        'Rasa nyeri dan kaku',
        'Mimisan',
        'Kelelahan'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: 'Berikut yang merupakan gejala yang sering muncul pada area tulang yang patah adalah?',
      options: [
        'Nyeri dan bengkak',
        'Pusing dan mual',
        'Rasa gatal',
        'Berat badan turun'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel perdarahanLuarRingan = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pada Perdarahan Luar Ringan',
  steps: [
    'Perdarahan Luar Ringan seperti perdarahan kapiler memiliki derajat kedaruratan yang lebih rendah. Berikut adalah cara menanganinya : ',
    '1. Apabila memungkinkan, bersihkan luka dengan air mengalir atau cairan antiseptik (cairan iodine).',
    '2. Gunakan tekanan langsung dengan penutup luka. (plester cepat)',
    '3. Tekan terus hingga pendarahan terkendali.',
    '4. Pertahankan penutup luka atau bungkus menggunakan perban dengan selotip.',
    '5. Sebaiknya jangan melepas penutup luka atau balutan pertama hingga mendapatkan penanganan lanjutan.',
    '6. Setelah selesai, cuci tangan Anda atau mandi dan berganti pakaian untuk mencegah risiko penularan penyakit tertentu melalui darah korban.'
    'Pendarahan internal tidak dapat ditangani tenaga non-medis seperti pendarahan terbuka. Anda membutuhkan bantuan medis untuk mengetahui lokasi yang terkena dan cara mengatasinya. Mengobati pendarahan perlu disesuaikan dengan area tubuh yang mengalami hal tersebut. Maka dari itu, bila Anda mengalami kondisi-kondisi yang menunjukkan perdarahan dalam tubuh, segeralah periksakan diri ke dokter untuk memperoleh penanganan yang tepat.'
  ],
  bab: 'Perdarahan',
  subBab: '1.2 Pertolongan pada Perdarahan Luar Ringan',
  quizzes: [
    QuizModel(
      question: '1. Apa warna darah yang umumnya keluar saat terjadi perdarahan arteri?',
      options: [
        'Merah Tua',
        'Merah Cerah',
        'Kuning',
        'Coklat'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Apa gejala umum muncul pada perdarahan dalam otot?',
      options: [
        'Muntah darah',
        'Rasa nyeri dan kaku',
        'Mimisan',
        'Kelelahan'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: 'Berikut yang merupakan gejala yang sering muncul pada area tulang yang patah adalah?',
      options: [
        'Nyeri dan bengkak',
        'Pusing dan mual',
        'Rasa gatal',
        'Berat badan turun'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel perdarahanDalam = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pada Perdarahan Dalam',
  steps: [
    'Apabila melihat orang lain sedang mengalami serangan asma, kamu bisa membantunya dengan mempraktikkan pertolongan pertama pada asma berikut ini : ',
    '1. Hubungi ambulans',
    '2. Bantulah orang tersebut untuk duduk tegak dengan nyaman, sambil melonggarkan pakaiannya agar tidak sesak',
    '3. Tanyakan faktor pencetus asma dan jauhkan penderita dari kemungkinan pencetusnya, seperti debu, udara dingin, atau hewan peliharaan',
    '4. Jika orang tersebut memiliki obat asma, seperti inhaler, bantu dia untuk menggunakannya',
    '5. Jika dia tidak memiliki inhaler, gunakan inhaler yang ada di kotak P3K, jangan menggunakan obat inhaler dari penderita asma yang lain',
    '6. Setelah itu, tempelkan mouthpiece pada mulut penderita dan usahakan agar mulut penderita menutupi seluruh ujung mouthpiece',
    '7. Ketika penderita mengambil napas perlahan-lahan, tekan inhaler satu kali. Minta dia agar tetap mengambil napas pelan-pelan dan sedalam mungkin, kemudian tahan napas selama 10 detik',
    '8. Semprotkan inhaler sebanyak empat kali, dengan jarak waktu sekitar 1 menit tiap kali semprotan',
    '9. Setelah empat semprotan, tunggu hingga 4 menit. Jika masih sulit bernapas, berikan empat semprotan lagi dengan jarak waktu yang sama',
    '10. Setelah empat semprotan, tunggu hingga 4 menit. Jika masih sulit bernapas, berikan empat semprotan lagi dengan jarak waktu yang sama',
    '11. Jika tetap tidak ada perubahan, berikan empat semprotan inhaler setiap 4 menit sekali, sampai ambulans tiba',
    '12. Jika asma nya berat, semprotkan inhaler sebanyak 6 - 8 kali setiap 5 menit',
    '13. Lakukan langkah pertolongan diatas sambil menunggu bantuan datang, dan jangan tinggalkan penderita asma sendirian.',
  ],
  bab: 'Perdarahan',
  subBab: '1.3 Pertolongan pada Perdarahan Dalam',
  quizzes: [
    QuizModel(
      question: '1. Apa warna darah yang umumnya keluar saat terjadi perdarahan arteri?',
      options: [
        'Merah Tua',
        'Merah Cerah',
        'Kuning',
        'Coklat'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Apa gejala umum muncul pada perdarahan dalam otot?',
      options: [
        'Muntah darah',
        'Rasa nyeri dan kaku',
        'Mimisan',
        'Kelelahan'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: 'Berikut yang merupakan gejala yang sering muncul pada area tulang yang patah adalah?',
      options: [
        'Nyeri dan bengkak',
        'Pusing dan mual',
        'Rasa gatal',
        'Berat badan turun'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel pertolonganPatahTulang = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pada Patah Tulang',
  steps: [
    'Tujuan utama penanganan patah tulang adalah mengembalikan tulang yang patah ke posisinya semula dan menjaganya agar tetap stabil, serta mencegah perburukan kondisi. Berikut adalah pertolongan pertama yang bisa dilakukan bagi penolong tenaga non-medis : ',
    '1. Imobilisasi, yakni mengistirahatkan tulang yang mengalami cedera untuk menghindari pergerakan berlebihan selama proses penyembuhan dengan cara memasang gips atau benda padat lainnya yang bisa meminimalisir gerakan pada daerah tulang yang patah.',
    '2. Segera menghubungi nomor darurat 112.',
    '3. Menenangkan korban hingga tenaga medis tiba',
    'Penanganan lebih lanjut yang akan bisa diberikan oleh tenaga medis setelah pertolongan pertama tersebut adalah : ',
    '1. Operasi, untuk membersihkan tulang-tulang yang hancur, melakukan fiksasi internal maupun eksternal, dan menyambung tulang yang patah dengan pen, plat, screw, atau rods khusus.',
    '2. Pemberian obat antinyeri, untuk meredakan nyeri hebat akibat patah tulang.',
    '3. Pemberian obat-obatan untuk mencegah infeksi pada patah tulang terbuka.',
    '4. Fisioterapi, latihan yang bertujuan untuk mengembalikan fungsi tulang seperti sedia kala.',
  ],
  bab: 'Patah Tulang',
  subBab: '1.1 Pertolongan pada Patah Tulang',
  quizzes: [
    QuizModel(
      question: '1. Apa warna darah yang umumnya keluar saat terjadi perdarahan arteri?',
      options: [
        'Merah Tua',
        'Merah Cerah',
        'Kuning',
        'Coklat'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Apa gejala umum muncul pada perdarahan dalam otot?',
      options: [
        'Muntah darah',
        'Rasa nyeri dan kaku',
        'Mimisan',
        'Kelelahan'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: 'Berikut yang merupakan gejala yang sering muncul pada area tulang yang patah adalah?',
      options: [
        'Nyeri dan bengkak',
        'Pusing dan mual',
        'Rasa gatal',
        'Berat badan turun'
      ],
      correctAnswer: 0,
    ),
  ],
);

final IdentifyModel diabetes = IdentifyModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pertama pada Diabetes',
  steps: [
    'Kadar gula darah cukup rendah (Nilai referensi: Kadar gula darah di bawah 70 mg/dl atau 3,9 mmol/l)',
    '1. Konsumsi 10 hingga 20 g glukosa (misalnya, 2 hingga 4 tablet dekstrosa atau sekitar 1 gelas jus buah) Ukur kadar gula darah setelah 15 menit.',
    '2. Jika kadar glukosa darah tetap rendah (50 hingga 60 mg/dl,atau 2,8 hingga 3,3 mmol/l), minumlah lebih banyak glukosa.Setelah pengobatan berhasil, makanlah makanan atau camilan (misalnya, roti, buah, yogurt) untuk menghindari kambuhnya hipoglikemia.',
    'Setelah pengobatan berhasil, makanlah makanan atau camilan (misalnya, roti, buah, yogurt) untuk menghindari kambuhnya hipoglikemia.',

    'Pasien dalam keadaan sadar tetapi tidak mampu untuk menolong dirinya sendiriBerikan 30 g glukosa (jika pasien dapat menelan: misalnya, sekitar 2 gelas jus buah)Ukur kadar gula darah setelah 15 menit, jika kadar glukosa darah tetap rendah (50 hingga 60 mg/dl, atau 2,8 hingga 3,3 mmol/l), minumlah lebih banyak glukosa.Setelah pengobatan berhasil, makanlah makanan atau camilan (misalnya, roti, buah, yogurt) untuk menghindari kambuhnya hipoglikemia.',
    'Pasien tidak sadarkan diri Hubungi layanan darurat (Tekan 112)- Posisi pemulihan- Suntikan glukagon  (1 mg glukagon) ke dalam lengan atas atau paha.Apakah pasien merespon?Ya : Berikan makanan ringan yang manis dan mengandung 30g glukosa Tidak : Tunggu hingga dokter tiba',
    'Gula darah sedikit meningkat (nilai yang disarankan: gula darah nilai hingga 250 mg/dl atau 13,9 mmol/l)-Menyuntikkan insulin yang tepat- Minum air putih- Periksa gula darah setiap 60 menit',
    'Hiperglikemia berat dengan tanda-tanda awal ketoasidosis (misalnya, mual, muntah) (nilai yang direkomendasikan: nilai gula darah di atas 250 mg/dl atau 13,9 mmol/l)Mengukur kadar keton dalam tubuh dengan tes urin, menggunakan strip keton dengan mencelupkannya ke urin untuk mengetahui kadar keton dan/ menggunakan glukometer Tidak ada keton yang terdeteksi Pengukuran dalam urin: Warna terang tanpa tanda “+”Pengukuran dalam darah:di bawah 0,6 mmol/l',

    '1. Keton terdeteksi',
    '2. Rendah : Rendah (+) atau hingga 1,5 mmol/l',
    '3. Sedang ++) atau diatas 1,5 mmol /l / Tinggi (+++ atau ++++) atau di atas 4,0 mmol/ :  -Suntikkan insulin tambahan dalam jumlah ganda* - Minum banyak air - Jangan tertidur - Rawat inap di rumah sakit dianjurkan - Periksa gula darah (menggunakan darah) setiap 60 menit',
  ],
  bab: 'Keadaan Darurat',
  subBab: '1.1 Pertolongan pertama pada Diabetes',
  quizzes: [
    QuizModel(
      question: '1. Apa yang bisa menyebabkan reaksi alergi?',
      options: [
        'Air Bersih',
        'Debu dan serbuk sari',
        'Udara segar',
        'Matahari'
      ],
      correctAnswer: 1,
    ),
    QuizModel(
      question: '2. Dimana sebaiknya menyuntikkan EpiPen?',
      options: [
        'Di lengan',
        'Di perut',
        'Di paha atas',
        'Di punggung'
      ],
      correctAnswer: 0,
    ),
    QuizModel(
      question: '3. Apa gejala utama yang sering muncul saat serangan asma?',
      options: [
        'Sesak napas',
        'Mata berair',
        'Berkeringat',
        'Sakit kepala'
      ],
      correctAnswer: 0,
    ),
  ],
);
