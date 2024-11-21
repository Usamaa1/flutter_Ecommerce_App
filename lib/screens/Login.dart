import 'package:flutter/material.dart';
import 'package:full_app/widgets/TextInput.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2d3436)),
              ),
              TextInput(
                labelText: "Enter your Name",
                inputController: emailController,
                inputColor: 0xFF2d3436,
                inputWidth: 0.9,
                borderRadius: 10,
              ),
              TextInput(
                labelText: "Enter your Email",
                inputController: emailController,
                inputColor: 0xFF2d3436,
                inputWidth: 0.9,
                borderRadius: 10,
                forHelpText: "example@example.com",
              ),
              TextInput(
                labelText: "Enter your Password",
                inputController: passController,
                inputColor: 0xFF2d3436,
                inputWidth: 0.9,
                borderRadius: 10,
                forHelpText: "Password must be at least 10 characters",
                // securingText: true,
                securingCharacter: "*",
                inputIsPassword: true,
              ),
              TextInput(
                labelText: "Enter your City",
                inputController: emailController,
                inputColor: 0xFF2d3436,
                inputWidth: 0.9,
                borderRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
