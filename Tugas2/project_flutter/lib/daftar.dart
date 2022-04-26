import 'package:flutter/material.dart';
import 'package:project_flutter/login.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
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
                "Daftar",
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
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.0),
                ),
                hintText: "Nama"),
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
                    return login();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 156, 64)),
                child: Text("Daftar")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Text("Sudah Punya Akun?"),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                    child: Text("Login")),
              ])
            ],
          )
        ],
      ),
    ));
  }
}
