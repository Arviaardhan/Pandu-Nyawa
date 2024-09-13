class LukaModel {
  final String imagePath;
  final String title;
  final List<String> steps;

  LukaModel({
    required this.imagePath,
    required this.title,
    required this.steps,
  });
}

final LukaModel syokAnafilaksis = LukaModel(
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
);

final LukaModel epinefrin = LukaModel(
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
);

final LukaModel resutasiJantungParu = LukaModel(
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
);

final LukaModel mengalamiAsma = LukaModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pertama pada Asma',
  steps: [
    'Jika kamu sedang mengalami serangan asma, tetaplah tenang dan lakukan langkah-langkah pertolongan pertama pada asma berikut ini : ',
    '1. Duduk dan ambil napas pelan-pelan dengan stabil',
    '2. Cobalah untuk tetap tenang, karena panik justru akan semakin memperparah serangan asma',
    '3. Semprotkan obat inhaler untuk asma setiap 30–60 detik, maksimal 10 semprotan',
    '4. Hubungi ambulans jika kamu tidak memiliki inhaler, asma bertambah parah meski sudah menggunakan inhaler, tidak ada perbaikan meski sudah menyemprotkan inhaler sebanyak 10 kali, atau jika kamu merasa khawatir',
    '5. Ulangi langkah ketiga jika ambulans belum tiba dalam waktu 15 menit',
    '6. Baringkan pasien dalam posisi telentang.',
    '7. Baringkan pasien dalam posisi telentang.',
    '8. Baringkan pasien posisi telentang.',
    '9. Baringkan pasien dalam telentang.',
    '10. Baringkan pasien dalam posisi .',
  ],
);

final LukaModel orangLainMengalamiAsma = LukaModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Pertolongan pertama pada Asma',
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
);

final LukaModel diabetes = LukaModel(
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
);

final LukaModel lukaBakar = LukaModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  title: 'Luka Bakar',
  steps: [
    '1. Segera hubungi ambulans atau nomor darurat rumah sakit terdekat.',
    '2. Tanyakan apakah pasien membawa suntikan epinefrin. Jika pasien tidak mampu menyuntikkannya sendiri, bantu pasien untuk menyuntik pahanya.',
    '3. Baringkan pasien dalam posisi telentang.',
    '4. Baringkan pasien dalam posisi telentang.',
    '5. Baringkan pasien dalam posisi telentang.',
    '6. Baringkan pasien dalam posisi telentang.',
    '7. Baringkan pasien dalam posisi telentang.',
    '8. Baringkan pasien posisi telentang.',
    '9. Baringkan pasien dalam telentang.',
    '10. Baringkan pasien dalam posisi.',
  ],
);

final LukaModel lukaSayat = LukaModel(
  imagePath: 'lib/assets/images/luka-sayat.png',
  title: 'Luka Sayat',
  steps: [
    '1. Segera hubungi ambulans atau nomor darurat rumah sakit terdekat.',
    '2. Tekan luka untuk menghentikan pendarahan.',
    '3. Tutup luka dengan perban steril atau kain bersih.',
  ],
);
