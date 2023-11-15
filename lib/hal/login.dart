// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tugasmob_fl/hal/comp/button.dart';
import 'package:tugasmob_fl/hal/comp/texf.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.account_circle,
                size: 70,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Selamat Datang di Aplikasiku",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 32, 27, 27),
                  ),
                ),
              ),
              MyTextField(
                hintext: "Username",
                controller: usernameController,
                obsecuretext: false,
                width: 25,
                height: 20,
              ),
              MyTextField(
                obsecuretext: true,
                controller: passwordController,
                hintext: "Password",
                width: 25,
                height: 13,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Lupa Password?"),
                    )
                  ],
                ),
              ),
              MyBUtton(),
              Padding(
                padding: const EdgeInsets.all(25.0),
                // child: Row(
                //   children: [
                //     Expanded(
                //       child: Divider(
                //         thickness: 0.5,
                //         color: Colors.grey[400],
                //       ),
                //     ),
                //   ],
                // ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?"),
                  SizedBox(
                    width: 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Daftar Sekarang"),
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