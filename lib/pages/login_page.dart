import 'package:drive/main.dart';
import 'package:drive/pages/home_page.dart';
import 'package:drive/pages/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isIncurrectPassword = false;
  bool isIncurrectUsername = false;
  final _userName = TextEditingController();

  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 253),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud_upload,
                size: 98,
                color: Color.fromARGB(255, 147, 46, 254),
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 20),
                  height: 55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: TextField(
                    controller: _userName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lora-VariableFont_wght"),
                    cursorHeight: 30,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: "Username",
                    ),
                  )),
              Visibility(
                  visible: isIncurrectUsername,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          "enter a username with 8 charectors",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 20),
                  height: 55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: TextField(
                    controller: _password,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lora-VariableFont_wght"),
                    cursorHeight: 30,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Password"),
                  )),
              Visibility(
                  visible: isIncurrectPassword,
                  child: Row(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                        child: Text(
                          "incurrect password",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: MaterialButton(
                  onPressed: () async {
                    if (_userName.text.length < 8) {
                      setState(() {
                        isIncurrectUsername = true;
                      });
                      return;
                    } else {
                      setState(() {
                        isIncurrectUsername = false;
                      });
                    }
                    final fir = FirebaseFirestore.instance.collection("users");
                    final userdata = await fir.doc(_userName.text).get();

                    if (userdata != null) {
                      if (userdata.data()!["password"] == _password.text) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      } else {
                        setState(() {
                          isIncurrectPassword = true;
                        });
                      }
                    }
                  },
                  minWidth: double.infinity,
                  color: const Color.fromARGB(255, 153, 64, 248),
                  height: 45,
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont have an account "),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    )),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
