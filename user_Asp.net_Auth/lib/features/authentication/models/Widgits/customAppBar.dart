import 'package:flutter/material.dart';
import 'appbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [TAppBar()],
        ),
      ),
    );
  }
}
