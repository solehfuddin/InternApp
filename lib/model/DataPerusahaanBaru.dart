class DataPerusahaanBaru {
  late String nama, lokasi, logo, bagian;

  DataPerusahaanBaru({
    required this.nama,
    required this.lokasi,
    required this.logo,
    required this.bagian,
  });
}

var dataPerusahaanBaruList = [
  DataPerusahaanBaru(
      nama: 'Traveloka',
      lokasi: 'Jakarta',
      logo: 'images/traveloka.png',
      bagian: 'Ilustrator UI/UX'),
  DataPerusahaanBaru(
      nama: 'Alodokter',
      lokasi: 'Bandung',
      logo: 'images/alodokter.png',
      bagian: 'Manejemen Database'),
  DataPerusahaanBaru(
      nama: 'Ruang Guru',
      lokasi: 'Bandung',
      logo: 'images/ruangguru.png',
      bagian: 'Pengembang UX'),
  DataPerusahaanBaru(
      nama: 'Kredivo',
      lokasi: 'Jakarta',
      logo: 'images/kredivo.png',
      bagian: 'Legal KYC'),
  DataPerusahaanBaru(
      nama: 'Oyo',
      lokasi: 'Jakarta',
      logo: 'images/oyo.png',
      bagian: 'Editor produk'),
];
