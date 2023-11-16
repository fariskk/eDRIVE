import 'package:drive/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 253),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.cloud_upload,
              size: 98,
              color: Colors.purple,
            ),
            Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.only(left: 20),
                height: 55,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 188, 194, 190)),
                child: const TextField(
                  style: TextStyle(
                      fontSize: 20, fontFamily: "Lora-VariableFont_wght"),
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                  ),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.only(left: 20),
                height: 55,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 188, 194, 190)),
                child: const TextField(
                  style: TextStyle(
                      fontSize: 20, fontFamily: "Lora-VariableFont_wght"),
                  cursorHeight: 30,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Password"),
                )),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blueAccent])),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                color: Colors.transparent,
                height: 45,
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
