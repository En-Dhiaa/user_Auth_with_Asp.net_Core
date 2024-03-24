import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              //    color: Color.fromARGB(255, 82, 43, 255),
                              borderRadius: BorderRadius.circular(100)),
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 16, 0, 50),
                            backgroundImage: AssetImage(
                              'assets/abdum.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 6,
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Color.fromARGB(255, 38, 0, 255),
                                    )),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Abdualmotalib')
                  ],
                ),
              ),
              const Divider(
                indent: 0,
                endIndent: 0,
              ),
              TextFormField(
                obscureText: true,
                expands: false,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    // filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    icon: Icon(Icons.person),
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    labelText: "Full Name",
                    hintText: "Abdualmotalib Al-Shmiri"),
              ),
              const SizedBox( 
                height: 3,
              ),
              TextFormField(
                obscureText: true,
                // expands: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    // filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    icon: Icon(Icons.email_rounded),
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    labelText: "Email",
                    hintText: "Abdualmotalib@gmail.com"),
              ),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                obscureText: true,
                // expands: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    // filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    icon: Icon(Icons.password_sharp),
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    labelText: "Password",
                    hintText: "*********************"),
              ),
              const SizedBox(
                height: 3,
              ),
              TextFormField(
                obscureText: true,
                // expands: false,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    // filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    icon: Icon(Icons.email_rounded),
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    labelText: "Email",
                    hintText: "Abdualmotalib@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
