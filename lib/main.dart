import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Raka',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.red, useMaterial3: true),
      darkTheme: ThemeData(colorSchemeSeed: Colors.red, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const ProfilePage(), 
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [IconButton(icon: const Icon(Icons.share), onPressed: () {})],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              const CircleAvatar(radius: 50, child: Text('RE')),
              Text('Raka Erlangga', style: Theme.of(context).textTheme.headlineSmall),
              Text('NIM 1124160083', style: Theme.of(context).textTheme.bodyMedium),
              
              const Card(
                child: Column(children: [
                  InfoTile(icon: Icons.email, label: 'Email', value: 'raka@student.ac.id'),
                  InfoTile(icon: Icons.phone, label: 'HP', value: '0812345'),
                  InfoTile(icon: Icons.class_, label: 'Kelas', value: 'TI-5A'),
                  InfoTile(icon: Icons.code, label: 'GitHub', value: 'rakaerlangga'),
                ]),
              ),
              
              const Card(
                child: Column(children: [
                  InfoTile(icon: Icons.computer, label: 'Skill', value: 'IT Support'),
                  InfoTile(icon: Icons.gamepad, label: 'Hobi', value: 'PC Gaming & Figure'),
                  InfoTile(icon: Icons.person, label: 'Minat', value: 'Flutter'),
                ]),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Hai, Welcome to my profile!')),
        ),
        child: const Icon(Icons.info),
      ),
    );
  }
}