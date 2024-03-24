import 'package:flutter/material.dart';
import 'package:flutter_application_3/booking/booking_screen.dart';
import 'package:flutter_application_3/booking/clinic_screen.dart';
import '../features/authentication/screens/onboarding.dart';
import 'profile_screen.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 0, 255),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('Account Settings',
                style: TextStyle(color: Colors.white)),
            elevation: 5,
            backgroundColor: Color.fromARGB(255, 51, 0, 255),
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              // title: const Text("FlexibleSpace title"),
              background: Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.asset(
                    'assets/AppBar.png',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 16, 0, 50),
                        backgroundImage: AssetImage(
                          'assets/abdum.jpg',
                        ),
                      ),
                      trailing: Icon(Icons.manage_accounts_sharp),
                      title: Text("Abdualmotalib"),
                      subtitle: Text("abdualmotalib22@gmail.com"),
                    ),
                  )
                ],
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.

          SliverFillRemaining(
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 16, 0, 50),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 7, right: 7),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Account Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("0000000000000000000000000");
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ));
                        },
                        child: const ListTile(
                          enabled: true,
                          leading: Icon(Icons.person_2_outlined,
                              color: Color.fromARGB(255, 63, 38, 255)),
                          //trailing: Icon(Icons.manage_accounts_sharp),
                          title: Text("Abdualmotalib",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("abdualmotalib22@gmail.com",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 145, 145, 145))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ClinicScreen(),
                          ));
                        },
                        child: const ListTile(
                          leading: Icon(Icons.fingerprint_sharp,
                              color: Color.fromARGB(255, 63, 38, 255)),
                          //trailing: Icon(Icons.manage_accounts_sharp),
                          title: Text("Fingerprint ",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("add a new fingerprint",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 145, 145, 145))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BookingScreen(),
                          ));
                        },
                        child: const ListTile(
                          leading: Icon(Icons.notifications_on_sharp,
                              color: Color.fromARGB(255, 63, 38, 255)),
                          //trailing: Icon(Icons.manage_accounts_sharp),
                          title: Text("Notifications",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("abdualmotalib22@gmail.com",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 145, 145, 145))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen(),
                          ));
                        },
                        child: const ListTile(
                          leading: Icon(Icons.person_2_outlined,
                              color: Color.fromARGB(255, 63, 38, 255)),
                          //trailing: Icon(Icons.manage_accounts_sharp),
                          title: Text("Abdualmotalib",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("abdualmotalib22@gmail.com",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 145, 145, 145))),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.favorite_border_outlined,
                              color: Color.fromARGB(255, 63, 38, 255)),
                          //trailing: Icon(Icons.manage_accounts_sharp),
                          title: Text("Favorites",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("The Things you love",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 145, 145, 145))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Application Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_2_outlined,
                            color: Color.fromARGB(255, 63, 38, 255)),
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                        title: const Text("Dark Mode",
                            style: TextStyle(color: Colors.white)),
                        subtitle: const Text("abdualmotalib22@gmail.com",
                            style: TextStyle(
                                color: Color.fromARGB(255, 145, 145, 145))),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_2_outlined,
                            color: Color.fromARGB(255, 63, 38, 255)),
                        trailing: Switch(
                          value: false,
                          onChanged: (value) {},
                        ),
                        title: const Text("Dark Mode",
                            style: TextStyle(color: Colors.white)),
                        subtitle: const Text("abdualmotalib22@gmail.com",
                            style: TextStyle(
                                color: Color.fromARGB(255, 145, 145, 145))),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_2_outlined,
                            color: Color.fromARGB(255, 63, 38, 255)),
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                        title: const Text("Dark Mode",
                            style: TextStyle(color: Colors.white)),
                        subtitle: const Text("abdualmotalib22@gmail.com",
                            style: TextStyle(
                                color: Color.fromARGB(255, 145, 145, 145))),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 16, 0, 50),
                            elevation: 0,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            fixedSize: Size.fromHeight(50),
                          ),
                          onPressed: () {
                            showDialog<String>(
                                barrierColor: Color.fromARGB(167, 16, 0, 50),
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      backgroundColor:
                                          Color.fromARGB(211, 16, 0, 50),
                                      title: const Text('Logout',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      content: const Text(
                                          'Do you want to Logout?',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      actions: <Widget>[
                                        TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text('Cancel')),
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'Ok'),
                                            child: const Text('Ok'))
                                      ],
                                    ));
                          },
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.login_rounded,
                                  color: Color.fromARGB(255, 63, 38, 255)),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Dark Mode",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
