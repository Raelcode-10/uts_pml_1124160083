import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final UserProfile profile;
  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _namaCtrl, _emailCtrl, _hpCtrl, _bioCtrl;

  @override
  void initState() {
    super.initState();
    // Nilai awal dari text controller
    _namaCtrl = TextEditingController(text: widget.profile.nama);
    _emailCtrl = TextEditingController(text: widget.profile.email);
    _hpCtrl = TextEditingController(text: widget.profile.noHp);
    _bioCtrl = TextEditingController(text: widget.profile.bio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              
              TextFormField(controller: _namaCtrl, decoration: const InputDecoration(labelText: 'Nama Lengkap'),
              validator: (v) => v!.isEmpty ? 'Nama wajib diisi' : null,),
              TextFormField(controller: _emailCtrl, decoration: const InputDecoration(labelText: 'Email'),
              validator: (v) => !v!.contains('@') ? 'Email tidak valid' : null,),
              TextFormField(controller: _hpCtrl, decoration: const InputDecoration(labelText: 'Nomor HP'),
              validator: (v) {
                if (v!.length < 10 || v.length > 13) return 'Nomor HP harus 10-13 digit';
                if (!RegExp(r'^[0-9]+$').hasMatch(v)) return 'Hanya boleh angka';
                return null;
              },),
              TextFormField(controller: _bioCtrl, decoration: const InputDecoration(labelText: 'Bio Singkat')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      UserProfile updated = widget.profile;
                      updated.nama = _namaCtrl.text;
                      updated.email = _emailCtrl.text;
                      updated.noHp = _hpCtrl.text;
                      updated.bio = _bioCtrl.text;
                      // Kembalikan data baru ke halaman sebelumnya
                      Navigator.pop(context, updated);
                    }
                  }, child: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}