import 'package:flutter/material.dart';

class DonorAdmin extends StatefulWidget {
  const DonorAdmin({Key? key}) : super(key: key);

  @override
  _DonorAdminState createState() => _DonorAdminState();
}

class _DonorAdminState extends State<DonorAdmin>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
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