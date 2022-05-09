import 'package:flutter/material.dart';
import 'daftar.dart';
import 'main_menu.dart';

class Masuk extends StatefulWidget {
  Masuk({
    Key? key,
    required this.users,
    required this.passs,
  }) : super(key: key);
  final String users;
  final String passs;

  @override
  State<Masuk> createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Masuk",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              "images/Logo.png",
              height: 180,
              width: 180,
            ),
            SizedBox(height: 20),
            _usernameField(),
            SizedBox(height: 20),
            _PasswordField(),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: ElevatedButton(
                  onPressed: () {
                    String user = _usernameController.text;
                    String pass = _passwordController.text;
                    String text = '';
                    if (user == widget.users && pass == widget.passs) {
                      SnackBar snackBar =
                          SnackBar(content: Text("Login Berhasil"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => main_menu(username: user)));
                    } else {
                      SnackBar snackBar =
                          SnackBar(content: Text("Login Gagal"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 60, 156, 64)),
                  child: Text("Masuk",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Text("Belum Punya Akun?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/daftar');
                      },
                      child: Text("Daftar")),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: TextField(
        controller: _usernameController,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
            hintText: "Username"),
        enabled: true,
      ),
    );
  }

  Widget _PasswordField() {
    return Container(
      child: TextField(
        controller: _passwordController,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
            hintText: "Password"),
        obscureText: true,
        enabled: true,
      ),
    );
  }
}
