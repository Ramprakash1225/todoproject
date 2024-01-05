import 'package:flutter/material.dart';
import 'package:todoproject/custom.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignInPage(),
  ));
}

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 468,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/Rectangle53.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "Dive in without delay",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Lorem ipsum dolor sit amet consectetur.",
                style: TextStyle(
                  color: Color(0xff7A7A7A),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const Text(
                "Neque et nulla et.",
                style: TextStyle(
                  color: Color(0xff7A7A7A),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Container(
                  height: 49,
                  width: 189,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png",
                            height: 20,
                            width: 20),
                      ),
                      const Text("Sign in",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
