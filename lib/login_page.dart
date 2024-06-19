import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key}); // constructor

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mobileController = TextEditingController();

  //object
  var passwordController = TextEditingController();

  //object
  var emailController = TextEditingController();

  //object
  var formKey = GlobalKey<FormState>();

  // key
  bool isVisible = true;
  bool isVisibleEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.pink,
              statusBarColor: Colors.pink
          ),
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(onPressed: (){},
                child: const Text("Help",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w400),))
          ],
        ),
    );
  }

}