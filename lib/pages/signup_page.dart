import 'package:drive/featurs/form_validation.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? userNameError;

  String? emailError;

  String? passwordError;

  String? passwordNotMatchError;
  final _userName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _conformPassword = TextEditingController();

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
                color: Color.fromARGB(255, 153, 64, 248),
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
                    decoration: InputDecoration(
                        errorText: userNameError,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Username"),
                  )),
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 20),
                  height: 55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: TextField(
                    controller: _email,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lora-VariableFont_wght"),
                    cursorHeight: 30,
                    decoration: InputDecoration(
                        errorText: emailError,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Email"),
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
                    decoration: InputDecoration(
                        errorText: passwordError,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Password"),
                  )),
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 20),
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: TextField(
                    controller: _conformPassword,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lora-VariableFont_wght"),
                    cursorHeight: 30,
                    decoration: InputDecoration(
                        errorText: passwordNotMatchError,
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Conform Password"),
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: MaterialButton(
                  onPressed: () {
                    validator deatails = validator(
                        userName: "faris",
                        email: "faris@gmail",
                        password: "123",
                        conformPassword: "123");
                    setState(() {
                      userNameError = deatails.validateUserName();
                      emailError = deatails.validateEmail();
                      passwordError = deatails.validatePassword();
                      passwordNotMatchError =
                          deatails.validateConformPassword();
                    });
                  },
                  minWidth: double.infinity,
                  color: const Color.fromARGB(255, 153, 64, 248),
                  height: 45,
                  child: const Text(
                    "Sign up",
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
                  const Text("already have an account "),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Text(
                      "Sign in",
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
