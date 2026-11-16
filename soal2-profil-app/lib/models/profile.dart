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
  List<String> pengalaman;

  UserProfile({
    required this.nama, required this.nim, required this.prodi, required this.kelas,
    required this.bio, required this.email, required this.noHp, required this.github,
    required this.keahlian, required this.pendidikan, required this.pengalaman,
  });

  static UserProfile defaultProfile() {
    return UserProfile(
      nama: 'Raka Erlangga',
      nim: '1124160083',
      prodi: 'Teknik Informatika',
      kelas: 'TI SE2',
      bio: 'Mahasiswa Teknik Informatika, IT Support',
      email: 'raka.erlangga10@gmail.com',
      noHp: '081234567890',
      github: 'github.com/raelcode-10',
      keahlian: ['Flutter & Dart', 'Networking & IT Support', 'Python (Kali Linux)', 'Playing Games'],
      pendidikan: ['Institut Teknologi & Bisnis Bina Sarana Global'],
      pengalaman: ['Pengalaman: IT Support AirAsia Indonesia'],
    );
  }
}