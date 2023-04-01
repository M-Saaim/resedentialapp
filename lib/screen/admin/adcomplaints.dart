// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:resedentialapp/screen/admin/adhome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Adcomplaints extends StatefulWidget {
  const Adcomplaints({Key? key}) : super(key: key);

  @override
  State<Adcomplaints> createState() => _AdcomplaintsState();
}

class _AdcomplaintsState extends State<Adcomplaints> {
  get textStyle => const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Adhome()));
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text("Complaints"),
        backgroundColor: const Color.fromARGB(255, 170, 37, 0),
        centerTitle: true,
      ),
    ));
  }
}
