// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/ModelsDB/User_API.dart';
// import 'package:flutter_application_3/Provider/user_provider.dart';

// class HomeWidget extends StatefulWidget {
//   const HomeWidget({super.key});

//   @override
//   State<HomeWidget> createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   Future<UserJson?>? user;

//   void clickGetButton() {
//     setState(() {
//       user = fetchUser();
//     });
//   }

//   void clickDeleteButton() {
//     setState(() {
//       user = deleteUser();
//     });
//   }

//   void clickCreateButton() {
//     setState(() {
//       user = createUser("create user", "example");
//     });
//   }

//   void clickUpdateButton() {
//     setState(() {
//       user = updateUser("update user", "example");
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final userProvider = Provider.of<user_provider>(context);
//     // userProvider.getUser();
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: const Center(child: Text("try API")),
//       ),
//       body: SizedBox(
//           height: 500,
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FutureBuilder<UserJson?>(
//                   future: user,
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return const CircularProgressIndicator();
//                     } else if (snapshot.connectionState ==
//                         ConnectionState.none) {
//                       return Container();
//                     } else {
//                       if (snapshot.hasData) {
//                         return buildDataWidget(context, snapshot);
//                       } else if (snapshot.hasError) {
//                         return Text("${snapshot.error}");
//                       } else {
//                         return Container();
//                       }
//                     }
//                   }),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: () {
//                       print("00000000000000000000000000000000");
//                       print(fetchUser());
//                       fetchUser();
//                     },
//                     child: const Text("Get User")),
//               ),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: () => clickCreateButton(),
//                     child: const Text("creae User")),
//               ),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: () => clickUpdateButton(),
//                     child: const Text("Update User")),
//               ),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: () => clickDeleteButton(),
//                     child: const Text("Delete User")),
//               ),
//             ],
//           )),
//     );
//   }
// }

// Widget buildDataWidget(context, snapshot) => Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Text(
//             snapshot.data.name,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Text(
//             snapshot.data.id,
//           ),
//         ),
//       ],
//     );
