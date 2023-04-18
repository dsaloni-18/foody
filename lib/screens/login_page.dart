import 'package:flutter/material.dart';
import '../usable_widget/reusable_widgets.dart';
import 'donorPage.dart';
import 'ngoPage.dart';
import 'adminPage.dart';

// ignore_for_file: library_private_types_in_public_api
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  String value = "Admin";
  var items = ['Admin', 'NGO', 'Donor'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign In",
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
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset('images/login.png',
                    fit: BoxFit.fitWidth, width: 240, height: 240),
                reusableTextField("Enter UserName", Icons.person_pin_outlined,
                    false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.perm_identity_sharp,
                      color: Colors.white70,
                    ),
                    labelText: "Select Your Role",
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: Colors.white.withOpacity(0.3),
                    errorStyle: const TextStyle(
                        color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Select Your Role',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                      ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: value,
                      isDense: true,
                      items: items.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16)),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          value = newValue!;
                          //print(value);
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Login", () {
                  if (value == 'Admin') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminPage()));
                  } else if (value == 'NGO') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NGOPage()));
                  } else if (value == 'Donor') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonorPage()));
                  }
                })
              ],
            ),
          ))),
    );
  }
}
