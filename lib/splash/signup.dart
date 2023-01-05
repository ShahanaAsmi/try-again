import 'package:flutter/material.dart';
import 'package:tryagain/splash/homescreen.dart';
import 'package:tryagain/splash/login.dart';

import '../clipper/clipper2.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPassword = TextEditingController();
  var nameController = TextEditingController();

   Widget _buildName() {
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter your Name";
            }
          },
          controller: nameController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.person_outline),
              hintText: 'Enter your name'),
        ),
      );
    }
 Widget _buildEmail() {
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter your Email";
            }
          },
          controller: emailController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email_outlined),
              hintText: 'Enter your email'),
        ),
      );
    }
     Widget _buildPassword() {
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter your Password";
            }
          },
          controller: passwordController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              hintText: 'Enter your password'),
        ),
      );
    }
     Widget _buildConfirmPasswordEmail() {
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Confirm Password";
            }
          },
          controller: confirmPassword,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              hintText: 'confirm password'),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 300),
                painter: RPSCustomPainter(),
              ),
              Positioned(
                top: 16,
                right: -5,
                child: CustomPaint(
                  size: Size(MediaQuery.of(context).size.width, 300),
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(
                top: 220,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please sign in to continue.',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 25,
                ),
                _buildName(),
                const SizedBox(
                  height: 20,
                ),
                _buildEmail(),
                   const SizedBox(
                  height: 25,
                ),
                _buildPassword(),
                const SizedBox(
                  height: 20,
                ),
                _buildConfirmPasswordEmail(),
            
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                        Color(0xfff7b858),
                        Color(0xfffca148),
                      ])),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      "Already have an account? ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      child:const Text(
                        "Sign in ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xfffca148),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
