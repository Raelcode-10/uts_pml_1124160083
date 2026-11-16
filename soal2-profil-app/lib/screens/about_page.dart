import 'package:flutter/material.dart';
import '../models/profile.dart';

class AboutPage extends StatelessWidget {
  final UserProfile profile;
  const AboutPage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Keahlian & Hobi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...profile.keahlian.map((item) => ListTile(leading: const Icon(Icons.check), title: Text(item))),
          const Divider(),
          const Text('Riwayat Pendidikan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...profile.pendidikan.map((item) => ListTile(leading: const Icon(Icons.school), title: Text(item))),
          const Divider(),
          const Text('Pengalaman', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...profile.pengalaman.map((item) => ListTile(leading: const Icon(Icons.work), title: Text(item))),
        ],
      ),
    );
  }
}