import 'package:drive/main.dart';
import 'package:drive/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  bool isIncurrectPassword = false;
  final _userName = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 255, 255, 255),
    ));
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
                  onPressed: () {},
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
