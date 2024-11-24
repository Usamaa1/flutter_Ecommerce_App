import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/Login.dart';
import 'package:full_app/screens/MyHome.dart';
import 'package:full_app/widgets/HeadingText.dart';
import 'package:full_app/widgets/IconButton.dart';
import 'package:full_app/widgets/TextInput.dart';
import 'package:full_app/widgets/TextWithLink.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const HeadingText(headingText: "User Signup"),
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
              MyIconButton(
                buttonText: "Sign Up",
                buttonFunc: () {},
                // buttonIcon: FontAwesomeIcons.stairs,
                buttonBGColor: 0xff000000,
              ),
              const TextWithLink(
                simpleText: "Already have an account?",
                linkText: "Login",
                isLink: true,
                pageRoute: Login(),
                // horizontalAlignment: MainAxisAlignment.end,
                // isPushReplacement: true,
              ),
              MyIconButton(
                buttonIcon: FontAwesomeIcons.home,
                buttonText: "Home Page",
                buttonFunc: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHome()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
