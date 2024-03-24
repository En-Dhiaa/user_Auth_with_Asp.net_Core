import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
            backgroundColor: const Color.fromARGB(255, 51, 0, 255),
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: const Padding(
                padding: EdgeInsets.only(left: 7, right: 7),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Account Settings",
                          style:
                              TextStyle(color: Color.fromARGB(255, 17, 15, 15)),
                        ),
                      ),
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
