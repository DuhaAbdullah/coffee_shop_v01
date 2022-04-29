import 'package:flutter/material.dart';

import '../components/header_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({ Key? key }) : super(key: key);
 static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* auth 
            const HeaderAuth(),
            //* test
            ElevatedButton(
              onPressed: (() => Navigator.pushNamed(context, SignUpScreen.routeName)), 
              child: const Text('to go')), 
          ],
        ),
      ),
    );
  }
}