import 'package:flutter/material.dart';

class NGOAdmin extends StatefulWidget {
  const NGOAdmin({Key? key}) : super(key: key);

  @override
  _NGOAdminState createState() => _NGOAdminState();
}

class _NGOAdminState extends State<NGOAdmin>
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