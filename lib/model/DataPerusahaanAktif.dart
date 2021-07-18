class DataPerusahaanAktif {
  late String nama, lokasi, durasi, logo, bagian, peminat;
  late List<String> persyaratan, benefit;
  double padLeft, padRight;

  DataPerusahaanAktif({
    required this.nama,
    required this.lokasi,
    required this.durasi,
    required this.logo,
    required this.bagian,
    required this.persyaratan,
    required this.benefit,
    required this.peminat,
    required this.padLeft,
    required this.padRight,
  });
}

var dataPerusahaanAktifList = [
  DataPerusahaanAktif(
      nama: 'Tokopedia',
      lokasi: 'Jakarta',
      durasi: '3 Bulan',
      logo: 'images/tokped.png',
      bagian: 'Pengembangan UX',
      peminat: '23 peminat',
      padLeft: 20,
      padRight: 5,
      persyaratan: [
        'Menyukai dan memahami konsep UX',
        'Pernah mempelajari desain visual',
        'Dapat menggunakan software desain seperti Adobe Ilustrator dan Photoshop',
      ],
      benefit: [
        'Dimentori oleh senior desainer',
        'Mendapatkan sertifikat',
        'Mendapatkan uang saku',
      ]),
  DataPerusahaanAktif(
      nama: 'Bukalapak',
      lokasi: 'Jakarta',
      durasi: '1 Bulan',
      logo: 'images/bukalapak.png',
      bagian: 'Manajemen Infra',
      peminat: '15 peminat',
      padLeft: 5,
      padRight: 5,
      persyaratan: [
        'Pernah mempelajari cisco',
        'Bersedia ditempatkan dilapangan dengan tim infra',
        'Membuat laporan hasil pemasangan dan testing',
      ],
      benefit: [
        'Mendapatkan sertifikat',
        'Mendapatkan uang saku',
      ]),
  DataPerusahaanAktif(
      nama: 'Tokopedia',
      lokasi: 'Jakarta',
      durasi: '2 Bulan',
      logo: 'images/tokped.png',
      bagian: 'Riset dan pengembangan',
      peminat: '17 peminat',
      padLeft: 5,
      padRight: 5,
      persyaratan: [
        'Pernah menggunakan docker',
        'Dapat bekerjasama dengan tim',
      ],
      benefit: [
        'Dimentori oleh senior RnD',
        'Mendapatkan sertifikat',
        'Mendapatkan uang saku',
      ]),
  DataPerusahaanAktif(
      nama: 'Shopee',
      lokasi: 'Jakarta',
      durasi: '3 Bulan',
      logo: 'images/shopee.png',
      bagian: 'Desainer UI',
      peminat: '25 peminat',
      padLeft: 5,
      padRight: 5,
      persyaratan: [
        'Menyukai dan memahami konsep UI',
        'Pernah mempelajari desain visual',
        'Dapat menggunakan software desain seperti Adobe Ilustrator'
      ],
      benefit: [
        'Dimentori oleh senior desainer',
        'Mendapatkan sertifikat',
        'Mendapatkan uang saku',
      ]),
  DataPerusahaanAktif(
      nama: 'Dana',
      lokasi: 'Jakarta',
      durasi: '3 Bulan',
      logo: 'images/dana.png',
      bagian: 'Pengembangan mobile',
      peminat: '12 peminat',
      padLeft: 5,
      padRight: 20,
      persyaratan: [
        'Memiliki pengetahuan pemrograman flutter',
        'Pernah membuat minimal 1 projek kecil',
      ],
      benefit: [
        'Dimentori oleh senior programmer',
        'Mendapatkan sertifikat',
      ]),
];
