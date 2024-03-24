import 'package:flutter/material.dart';
import 'package:flutter_application_3/Controllers/user_data_controller.dart';
//import 'package:flutter_application_3/features/authentication/screens/Login/login.dart';
import 'package:flutter_application_3/features/authentication/screens/home_try.dart';
import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/sizes.dart';
import '../../models/Widgits/TFormDivider.dart';
import '../../models/Widgits/TFormIconButtons.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final passwordTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.addingWithAppBarHeight,
          child: Column(
            children: [
              //    LoginHeader(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Let's create your account",
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              //................................................................................
              // const LoginForm(),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spacentSections),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameTextController,
                        enableInteractiveSelection: true,
                        enableSuggestions: true,
                        keyboardType: TextInputType.name,
                        //style: TextField.materialMisspelledTextStyle,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.person_pin_rounded,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.person_pin_rounded,
                                  color: Colors.black,
                                ),
                          labelText: "username",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //........................................................................
                      TextFormField(
                        controller: emailTextController,
                        keyboardType: TextInputType.emailAddress,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.email_outlined,
                                  color: Colors.black,
                                ),
                          labelText: "Email",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),

                      //...........................................................................
                      TextFormField(
                        controller: phoneTextController,
                        keyboardType: TextInputType.phone,
                        expands: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                          labelText: "Phone Number",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //...........................................................................
                      TextFormField(
                        controller: passwordTextController,
                        obscureText: true,
                        // expands: false,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          prefixIcon: dark
                              ? Icon(
                                  Icons.password,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.password,
                                  color: Colors.black,
                                ),
                          suffixIcon: dark
                              ? Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.black,
                                ),
                          labelText: "password",
                        ),
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spaceBetweenFileds,
                      ),
                      //...........................................................................

                      //........................................................................
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //...................Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              // TextButton(
                              //     onPressed: () {},
                              //     child: const Text(
                              //         "I agree to Privacy Policy and Terms of Use")),

                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '${"I agree to "}',
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                TextSpan(
                                    text: 'Privacy ,Policy ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .apply(
                                          color: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                          decoration: TextDecoration.underline,
                                          decorationColor: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                        )),
                                TextSpan(
                                    text: '${",and "}',
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                TextSpan(
                                    text: 'Terms of Use',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .apply(
                                          color: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                          decoration: TextDecoration.underline,
                                          decorationColor: dark
                                              ? Color.fromARGB(
                                                  255, 128, 136, 255)
                                              : Color.fromARGB(
                                                  255, 162, 0, 255),
                                        )),
                              ])),
                            ],
                          ),
                        ],
                      ),
                      //........................................................................
                      const SizedBox(
                        height: TSizes.spacentSections,
                      ),
                      //........................................................................button

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            try {
                              await LoginApi_Create.Create(
                                  nameTextController.text.toString(),
                                  emailTextController.text.toString(),
                                  passwordTextController.text.toString());
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Success"),
                                  content: Text(
                                      "Your Account has created,/n Go and login "),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeTry()));
                                      },
                                      child: Text('Login'),
                                    ),
                                  ],
                                ),
                              );
                            } catch (e) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Error'),
                                  content: Text(e.toString()),
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
                          style: ElevatedButton.styleFrom(
                              backgroundColor: dark
                                  ? Color.fromARGB(255, 96, 65, 255)
                                  : Color.fromARGB(255, 59, 0, 254)),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: dark
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //........................................................................
                    ],
                  ),
                ),
              ),

              ///////////////ـــــــــــــــــــــــــــــــــــــــــــــــــــتdivider
              TFormDivider(dividerText: "Or Sign with"),
              SizedBox(
                height: TSizes.spacebetween,
              ),
              //ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
              TFormIconButons(),
            ],
          ),
        ),
      ),
    );
  }
}
