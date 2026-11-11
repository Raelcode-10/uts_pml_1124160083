class UserProfile {
  String nama;
  String nim;
  String prodi;
  String kelas;
  String bio;
  String email;
  String noHp;
  String github;
  List<String> keahlian;
  List<String> pendidikan;

  UserProfile({
    required this.nama, required this.nim, required this.prodi, required this.kelas,
    required this.bio, required this.email, required this.noHp, required this.github,
    required this.keahlian, required this.pendidikan,
  });

  // Data awal (Default)
  static UserProfile defaultProfile() {
    return UserProfile(
      nama: 'Raka Erlangga Ramadhan',
      nim: '12345678', // Sesuaikan NIM kamu
      prodi: 'Teknik Informatika',
      kelas: 'TI-A', // Sesuaikan
      bio: 'Mahasiswa Teknik Informatika, IT Support, & Flutter enthusiast.',
      email: 'raka@example.com',
      noHp: '081234567890',
      github: 'github.com/raka-erlangga',
      keahlian: ['Flutter & Dart', 'Networking & IT Support', 'Python (Kali Linux)', 'Mobile Legends (Fighter)'],
      pendidikan: ['Institut Teknologi & Bisnis Bina Sarana Global', 'Pengalaman: IT Support AirAsia Indonesia'],
    );
  }
}