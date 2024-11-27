import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/MyHome.dart';
import 'package:full_app/screens/Signup.dart';
import 'package:full_app/widgets/HeadingText.dart';
import 'package:full_app/widgets/IconButton.dart';
import 'package:full_app/widgets/TextInput.dart';
import 'package:full_app/widgets/TextWithLink.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const HeadingText(headingText: "Login"),
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
              MyIconButton(
                buttonText: "Login",
                buttonFunc: () {},
                // buttonIcon: FontAwesomeIcons.stairs,
                buttonBGColor: 0xff000000,
              ),
              const TextWithLink(
                simpleText: "Don't have an account?",
                linkText: "Sign up",
                isLink: true,
                pageRoute: Signup(),
                // isPushReplacement: true,
              ),
              MyIconButton(
                buttonIcon: FontAwesomeIcons.home,
                buttonText: "Home Page",
                buttonFunc: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHome()),
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
