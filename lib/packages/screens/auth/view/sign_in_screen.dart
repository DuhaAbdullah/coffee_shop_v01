import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);
 static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('sign in'),
      ),
    );
  }
}