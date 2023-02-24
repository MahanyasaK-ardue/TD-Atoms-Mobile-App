import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:atom/styles/loginPageStyle.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: _mediaQuery.size.height * 1,
              decoration: BoxDecoration(gradient: ScaffoldColor),
              child: Column(
                children: [
                  SizedBox(
                    height: _mediaQuery.size.height * 0.45,
                    child: const Center(
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/TD-Logo.jpg",
                          ),
                          radius: 90),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: _mediaQuery.size.height * 0.55,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              eMailField(),
                              passwordField(),
                              TextButton(onPressed: () {}, child: const Text("Forgot Password?",)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 200,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Already have an accout? Sign in."),
                              ),
                              SignInButton(
                                Buttons.Google,
                                text: "Sign up with Google",
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}