// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyDonations extends StatefulWidget {
  const MyDonations({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyDonationsState createState() => _MyDonationsState();
}

class _MyDonationsState extends State<MyDonations>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.pinkAccent, Colors.black87],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        
      ),
    );
  }
}