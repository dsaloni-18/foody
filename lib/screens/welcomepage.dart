import 'package:flutter/material.dart';


import '../usable_widget/reusable_widgets.dart';
import 'login_page.dart';
import 'signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Foody",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.pinkAccent, Colors.black87],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Expanded(
              child: Center(child: Image.asset('images/welcome.jpg',fit: BoxFit.fitWidth,height:300,width:300)),
            ),
            Expanded(
              child: Column(
                children:<Widget>[
                  const Text("Welcome to Needy Foody",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  firebaseUIButton(context, "Login", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  }),
                  firebaseUIButton(context, "Sign up", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
