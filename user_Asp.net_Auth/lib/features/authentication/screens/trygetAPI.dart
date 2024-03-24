import 'package:flutter/material.dart';
import 'package:flutter_application_3/Controllers/user_data_controller.dart';
//import 'package:flutter_application_3/Controllers/user_data_controller.dart';
import 'package:flutter_application_3/ModelsDB/User_API.dart';

class UserShow extends StatefulWidget {
  const UserShow({super.key});

  @override
  State<UserShow> createState() => _UserShowState();
}

class _UserShowState extends State<UserShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserJson>>(
        future: get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [Text(user[index].name!)],
                );
              },
            );
          } else {
            return Text('Error: ${snapshot.error}');
          }
        },
      ),
    );
  }
}
