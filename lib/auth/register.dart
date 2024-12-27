import 'package:flutter/material.dart';
import 'package:nti_task/components/customimage.dart';
import 'package:nti_task/components/customlogo.dart';
import 'package:nti_task/components/textformfield.dart';
import 'package:nti_task/homepage.dart';
import 'package:nti_task/auth/login.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff143D5A),
      body: ListView(
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
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              Container(height: 20),
              CustomTextForm(
                hintText: "Firstname",
                mycontroller: firstname,
                prefixIcon: const Icon(Icons.person),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please  enter your first name";
                  }
                  return null;
                },
                //label: "first name",
              ),
              Container(height: 10),
              CustomTextForm(
                hintText: "Last Name",
                mycontroller: lastname,
                prefixIcon: const Icon(Icons.person),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please  enter your last name";
                  }
                  return null;
                },
                //label: "last name",
              ),
              Container(height: 10),
              CustomTextForm(
                hintText: "Phone number",
                mycontroller: phone,
                prefixIcon: const Icon(Icons.phone),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please  enter your phone  number";
                  }
                  return null;
                },
                //label: "phone number",
              ),
              Container(height: 10),
              CustomTextForm(
                hintText: "Email address",
                mycontroller: email,
                prefixIcon: const Icon(Icons.email),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please  enter your email";
                  }
                  return null;
                },
                //label: "e-mail",
              ),
              Container(height: 10),
              CustomTextForm(
                hintText: "Password",
                mycontroller: password,
                prefixIcon: const Icon(Icons.password),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please  enter your password";
                  }
                  return null;
                },
                //label: "password",
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
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const HomePage();
                  }));
                },
                child: const Text(
                  "Signup",
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
                      return const Login();
                    }));
                  },
                  child: const Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Do you have An Account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Login",
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
    );
  }
}
