import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/sizes.dart';
import '../Login/login.dart';
import 'SuccessScreen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.IsDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.black : Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: dark
                ? Icon(
                    Icons.close,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                        dark ? TImage.verifyDark : TImage.verifyLight)),
                //..........................................................................
                Text(
                  "Verify Your email address!",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.sa,
                ),
                Text(
                  "dhiaa1221@gmail.com",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: TSizes.sa,
                ),
                Text(
                  " Your email address!Verify Your email address!Verify Your email address!Verify Your email address!",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: TSizes.sa,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SuccessScreen()));
                      //Get.to(const SuccessScreen();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark
                            ? Color.fromARGB(255, 55, 0, 255)
                            : Color.fromARGB(255, 59, 0, 254)),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: dark
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: dark
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color.fromARGB(255, 0, 4, 255),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
