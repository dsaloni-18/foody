import 'package:flutter/material.dart';
import 'MyDonations.dart';
import 'viewRequest.dart';
class DonorPage extends StatefulWidget {
  const DonorPage({Key? key}) : super(key: key);

  @override
  _DonorPageState createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage>
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
          "Donor Page",
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
          tabs: const [Tab(text: "View Request"),Tab(text: "My Donations")],),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          ViewRequest(),
          MyDonations(),
      ],),
    );
  }
}