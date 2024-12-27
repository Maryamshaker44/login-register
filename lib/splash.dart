import 'package:flutter/material.dart';
import 'package:nti_task/auth/login.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    navigateAfterThreeSeconds();
    super.initState();
  }
  void navigateAfterThreeSeconds(){
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return  Login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff143D5A),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logoo.png"),
            ]),
      ),
    );
  }
}
