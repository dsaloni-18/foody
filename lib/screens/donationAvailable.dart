import 'package:flutter/material.dart';

class DonationAvailable extends StatefulWidget {
  const DonationAvailable({Key? key}) : super(key: key);

  @override
  _DonationAvailableState createState() => _DonationAvailableState();
}

class _DonationAvailableState extends State<DonationAvailable>
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