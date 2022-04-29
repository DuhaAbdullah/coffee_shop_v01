import 'package:coffee_shop_v01/packages/screens/auth/components/header_auth.dart';
import 'package:coffee_shop_v01/packages/screens/auth/view/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);
 static String routeName = "/sign_in";
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