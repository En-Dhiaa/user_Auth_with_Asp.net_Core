// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final storage = FlutterSecureStorage();

//   void login(BuildContext context) async {
//     // يمكنك هنا إجراء التحقق من الحساب والتسجيل الدخول

//     // مثال بسيط للتحقق من الحساب
//     String email = emailController.text;
//     String password = passwordController.text;

//     if (email == 'example@example.com' && password == 'password') {
//       // تخزين معلومات تسجيل الدخول بشكل آمن
//       await storage.write(key: 'email', value: email);
//       await storage.write(key: 'password', value: password);

//       // في حالة وجود الحساب، قم بالانتقال إلى صفحة جلب البيانات
//       Navigator.pushReplacementNamed(context, '/data');
//     } else {
//       // في حالة عدم وجود الحساب، يمكنك عرض رسالة خطأ
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Invalid email or password'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () => login(context),
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }