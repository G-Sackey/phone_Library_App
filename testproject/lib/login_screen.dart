import 'package:flutter/material.dart';
import 'package:testproject/components/my_button.dart';
import 'package:testproject/components/my_textfields.dart';
import 'package:testproject/components/square_tile.dart';
import 'package:testproject/homescreen.dart';

class Login extends StatelessWidget {
  Login({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //signUserIn method
  signUserIn(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Homescreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 30),
              //welcome back
              Text(
                "WELCOME BACK",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 25),
              //username textfield
              Textfield(
                controller: usernameController,
                hintText: 'Username',
                obscuretext: false,
              ),

              const SizedBox(height: 20),
              //password textfield
              Textfield(
                controller: passwordController,
                hintText: 'Password',
                obscuretext: true,
              ),

              const SizedBox(height: 10),

              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //login button
              my_button(
                onTap: () => signUserIn(context),
              ),

              const SizedBox(height: 20),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),

              SizedBox(height: 10),

              //other login logos(google)
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SquareTile(imagePath: 'lib/images/google.png')],
              ),

              const SizedBox(height: 50),
              //Not a memmber? Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
