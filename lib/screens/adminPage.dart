import 'package:flutter/material.dart';
import 'donorAdmin.dart';
import 'ngoAdmin.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage>
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: const Text(
          "Admin Page",
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
          tabs: const [Tab(text: "Donors"),Tab(text: "NGOs")],),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          DonorAdmin(),
          NGOAdmin(),
      ],),
    );
  }
}