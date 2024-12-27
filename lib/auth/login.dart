import 'package:flutter/material.dart';
import 'package:nti_task/components/customimage.dart';
import 'package:nti_task/components/customlogo.dart';
import 'package:nti_task/components/textformfield.dart';
import 'package:nti_task/homepage.dart';
import 'package:nti_task/auth/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff143D5A),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Column(
              children: [
                Container(height: 10),
                const CustomLogoAuth(),
                Container(height: 10),
                const Text(
                  "Welcome!.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                Container(height: 10),
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Container(height: 20),
                CustomTextForm(
                    hintText: "Enter your email",
                    mycontroller: email,
                    prefixIcon: const Icon(Icons.email),
                    validator: (value){
                      if (value!.isEmpty){
                        return "please  enter your email";
                      }
                      return null;
                    },
                    //label: "e-mail",
                    ),
                Container(height: 10),
                CustomTextForm(
                    hintText: "Enter your password",
                    mycontroller: password,
                    prefixIcon: const Icon(Icons.password),
                    validator: (value){
                      if (value!.isEmpty){
                        return "please  enter your password";
                      }
                      return null;
                    },
                    //label: "password",
        
                    ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "Forget Password ?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(height: 10),
                MaterialButton(
                  height: 50,
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 170),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 35, 81, 114),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(height: 20),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const SignUP();
                      }));
                    },
                    child: const Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Don't have An Account ? ",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        TextSpan(
                            text: "Signup",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ])),
                    )),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 180,
                      child: Divider(
                        color: Colors.grey,
                        indent: 15,
                        height: 11,
                        endIndent: 6,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                      child: Divider(
                        color: Colors.grey,
                        indent: 15,
                        height: 11,
                        endIndent: 6,
                      ),
                    ),
                  ],
                ),
                Container(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(images: "assets/images/facebook.svg"),
                    
                    SizedBox(width: 40),
        
                    CustomImage(images: "assets/images/google.svg"),
                    
                    SizedBox(width: 40),
        
                    CustomImage(images: "assets/images/x.svg"),
                    
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
