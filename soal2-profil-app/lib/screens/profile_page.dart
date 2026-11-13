import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserProfile myProfile = UserProfile.defaultProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu Navigasi', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(profile: myProfile)));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/raka.png'), // Pastikan file ini ada
            ),
            const SizedBox(height: 16),
            Text(myProfile.nama, style: Theme.of(context).textTheme.headlineSmall),
            Text('${myProfile.nim} | ${myProfile.prodi} (${myProfile.kelas})', style: Theme.of(context).textTheme.bodyMedium),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(myProfile.bio, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyMedium),
            ),
            InfoTile(icon: Icons.email, label: 'Email', value: myProfile.email),
            InfoTile(icon: Icons.phone, label: 'Nomor HP', value: myProfile.noHp),
            InfoTile(icon: Icons.code, label: 'GitHub', value: myProfile.github),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}