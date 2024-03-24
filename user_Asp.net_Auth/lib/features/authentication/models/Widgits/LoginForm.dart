import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/user_provider.dart';
import 'package:flutter_application_3/features/authentication/screens/home_screen.dart';
import 'package:provider/provider.dart';
//import 'package:get/get.dart';
import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/sizes.dart';
import '../../screens/SignUP/SignUpScreen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final passwordTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    final userProvider = Provider.of<User_Provider>(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          children: [
            TextFormField(
              controller: emailTextController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              keyboardType: TextInputType.name,
              //style: TextField.materialMisspelledTextStyle,
              expands: false,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: dark
                    ? const Icon(
                        Icons.turn_right,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.turn_right,
                        color: Colors.black,
                      ),
                labelText: "email",
              ),
            ),
            //........................................................................
            const SizedBox(
              height: TSizes.spaceBetweenFileds,
            ),
            //........................................................................
            TextFormField(
              controller: passwordTextController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              keyboardType: TextInputType.phone,
              //style: TextField.materialMisspelledTextStyle,
              expands: false,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: dark
                    ? Icon(
                        Icons.password,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "password",
              ),
            ),
            //........................................................................
            const SizedBox(
              height: TSizes.spaceBetweenFileds,
            ),
            //........................................................................
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //...................Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember Me"),
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Forget Password")),
              ],
            ),
            //........................................................................
            const SizedBox(
              height: TSizes.spacentSections,
            ),
            //........................................................................
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: dark
                        ? Color.fromARGB(255, 217, 206, 255)
                        : Color.fromARGB(255, 59, 0, 254)),
                onPressed: () {
                  var user = userProvider.users;
                  if (user
                              .where((e) => e.email == emailTextController.text)
                              .length >
                          0 &&
                      user
                              .where((e) =>
                                  e.password == passwordTextController.text)
                              .length >
                          0) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Invalid email or password'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: dark
                        ? Color.fromARGB(255, 16, 0, 74)
                        : Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            //........................................................................
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                      //  Get.to(const SignUpScreen());
                    },
                    child: Text('Create Account'))),
          ],
        ),
      ),
    );
  }
}
