import 'package:flutter/material.dart';
import 'package:project_bookingaja/masuk.dart';

class daftar extends StatefulWidget {
  daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _namaController = TextEditingController();
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
                "Daftar",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              "images/Logo.png",
              height: 180,
              width: 180,
            ),
            _emailField(),
            SizedBox(height: 18),
            _usernameField(),
            SizedBox(height: 18),
            _PasswordField(),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: ElevatedButton(
                  onPressed: () {
                    SnackBar snackBar =
                        SnackBar(content: Text("Daftar Berhasil"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 60, 156, 64)),
                  child: Text("Daftar",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Text("Sudah Punya Akun?"),
                  TextButton(
                      onPressed: () {
                        String email = _emailController.text;
                        String usernames = _namaController.text;
                        String passwords = _passwordController.text;
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Masuk(
                            users: usernames,
                            passs: passwords,
                          );
                        }));
                      },
                      child: Text("Masuk")),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return Container(
      child: TextField(
        controller: _emailController,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
            hintText: "Email"),
        enabled: true,
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: TextField(
        controller: _namaController,
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
