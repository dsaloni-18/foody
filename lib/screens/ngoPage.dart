import 'package:flutter/material.dart';
import 'donationAvailable.dart';
import 'myRequest.dart';

class NGOPage extends StatefulWidget {
  const NGOPage({Key? key}) : super(key: key);

  @override
  _NGOPageState createState() => _NGOPageState();
}

class _NGOPageState extends State<NGOPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: const Text(
          "NGO Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
        decoration:const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.pinkAccent, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),),
        bottom: TabBar(
          controller: _controller,
          tabs: const [Tab(text: "My Request"),Tab(text: "Donations Available")],),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          MyRequest(),
          DonationAvailable(),
      ],),
    );
  }
}