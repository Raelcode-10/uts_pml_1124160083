# UTS Dasar Mobile Aplikasi - Aplikasi Profil Mahasiswa

Repo ini isinya kode sumber buat tugas UTS mata kuliah Pemrograman Mobile Lanjutan (Teknik Informatika - Global Institute).

## Identitas
* **Nama:** Raka Erlangga Ramadhan
* **NIM:** 1124160083
* **Kelas:** TI SE2 24


## Apa Aja yang Dibuat di Aplikasi Ini?
Aplikasi Android ini namanya **"Profil Raka"**, dibuat pakai Flutter (Material 3). Semua datanya disimpan di memori lokal dulu tanpa database. Berikut fitur-fitur yang sudah jalan di aplikasi ini:

1. **Halaman Login (`login_page.dart`)**
   * Pakai `StatefulWidget` dan `Form`.
   * Sudah ada validasinya, jadi kalau *username* atau *password* kosong nggak bakal bisa lanjut.
   * Ada simulasi *loading* muter (`CircularProgressIndicator`) sekitar 2 detik pakai `Future.delayed` pas tombol login ditekan.
   * Pindah halamannya pakai `Navigator.pushReplacement()`, jadi pas udah masuk profil nggak bisa di-*back* lagi ke halaman login.

2. **Halaman Profil (`profile_page.dart`)**
   * Foto profil diambil dari aset lokal (`assets/images/`) pakai `CircleAvatar`.
   * Menampilkan data diri lengkap (Nama, NIM, Prodi, Kelas, sama bio singkat).
   * Bagian kontak (Email, No HP, GitHub) dibungkus pakai komponen *reusable* `InfoTile` (`Card` + `ListTile`) biar kodenya rapi.
   * Komponen `Scaffold`-nya lengkap, ada `AppBar`, `Drawer` di samping kiri buat buka menu lain, sama `FloatingActionButton` di pojok kanan bawah buat edit profil.

3. **Halaman Edit Profil (`edit_profile_page.dart`)**
   * Pas halaman dibuka, kolom inputnya otomatis keisi sama data profil yang sekarang (pakai `TextEditingController`).
   * Validasi form-nya lumayan ketat: nama nggak boleh kosong, email wajib ada tanda `@`, dan nomor HP cuma boleh angka 10 sampai 13 digit (dicek pakai `RegExp`).
   * Kalau disimpan, data barunya dikirim balik ke halaman profil pakai `Navigator.pop(context, updatedProfile)` terus tampilannya langsung ke-update otomatis pakai `setState()`.

4. **Halaman Tentang Saya (`about_page.dart`)**
   * Isinya daftar keahlian, hobi, dan riwayat pendidikan yang dirender pakai `ListView`.

5. **Ganti Tema (Light & Dark Mode)**
   * Di pojok kanan atas `AppBar` halaman profil ada tombol bulan/matahari buat ganti tema terang ke gelap secara langsung tanpa harus *restart* aplikasi (pakai `ValueNotifier` di `main.dart`).
