// ignore_for_file: file_names

import 'package:absensi_app_sqlite/models/absensi.dart';
import 'package:flutter/material.dart';

class FormAbsensi extends StatefulWidget {
  final Absensi? absensi;
  const FormAbsensi({super.key, this.absensi});

  @override
  // ignore: no_logic_in_create_state
  State<FormAbsensi> createState() => _FormAbsensiState(absensi);
}

class _FormAbsensiState extends State<FormAbsensi> {
  Absensi? absensi;
  _FormAbsensiState(this.absensi);
  TextEditingController namaController = TextEditingController();
  TextEditingController kehadiranController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (absensi != null) {
      namaController.text = absensi!.nama;
      kehadiranController.text = absensi!.kehadiran;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Absensi"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama"),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: kehadiranController,
                decoration: const InputDecoration(labelText: "Kehadiran"),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      child: const Text("Save"),
                      onPressed: () {
                        if (absensi == null) {
                          absensi = Absensi(
                              namaController.text, kehadiranController.text);
                        } else {
                          absensi!.nama = namaController.text;
                          absensi!.kehadiran = kehadiranController.text;
                        }
                        Navigator.pop(context, absensi);
                      },
                    ),
                  ),
                  Container(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      child: const Text("Kembali"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
