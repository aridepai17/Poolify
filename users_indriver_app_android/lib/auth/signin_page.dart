import 'package:flutter/material.dart';
import 'signup_page.dart';


class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State <SigninPage> createState() =>  _SignInPageState();
}

class _SignInPageState extends State<SigninPage> 
{
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 122),

              Image.asset(
                'assets/signin.webp',
                width: MediaQuery.of(context).size.width * .65,
              ),

              const SizedBox(height: 10,),

              const Text(
                "Login As User",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )
              )

              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(children: [
                  TextField(
                    controller: emailtextEditingController,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 32,),

                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                    ),
                    child: const Text("Login", style: TextStyle(
                      color: Colors.white,
                    ))
                  )
                
              ],)),

              const SizedBox(height: 12,),

              TextButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (c) => SignUpPage()));
                },
                child: const Text(
                  "Don't have an account? Sign up",
                  style:  TextStyle(color: Colors.grey),)

              )

            ],
          ),
        ),
      ),
    );
  }
}