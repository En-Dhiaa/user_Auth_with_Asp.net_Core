import 'package:flutter/material.dart';

class ClinicScreen extends StatefulWidget {
  const ClinicScreen({super.key});

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clinics')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
                child: Text('Select A Clinic',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 65, 0, 0)))),
          ],
        ),
      ),
    );
  }
}
