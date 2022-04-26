import 'package:flutter/material.dart';
import 'package:project_flutter/daftar.dart';
import 'package:project_flutter/screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          SizedBox(height: 50),
          Container(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "images/Logo.png",
            height: 150,
            width: 150,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.0),
                ),
                hintText: "Email"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.0),
                ),
                hintText: "Password"),
            obscureText: true,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(95, 0, 95, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return screen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 156, 64)),
                child: Text("Login")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Text("Belum Punya Akun?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return daftar();
                      }));
                    },
                    child: Text("Daftar")),
              ])
            ],
          )
        ],
      ),
    ));
  }
}
