// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class message_screen extends StatefulWidget {
//   const message_screen({Key? key}) : super(key: key);

//   @override
//   _TabBarExampleState createState() => _TabBarExampleState();
// }

// class _TabBarExampleState extends State<message_screen>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(
//           "Top Doctors",
//           style: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
//         ),
//         centerTitle: false,
//         elevation: 0,
//         toolbarHeight: 100,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Container(
//               height: 20,
//               width: 20,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                 image: AssetImage("lib/icons/bell.png"),
//               )),
//             ),
//           ),
//         ],
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         physics: NeverScrollableScrollPhysics(),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 00),
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Container(
//                         // height: 50,
//                         width: MediaQuery.of(context).size.height,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Color.fromARGB(255, 235, 235, 235)),
//                           color: Color.fromARGB(255, 241, 241, 241),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.all(5),
//                               child: TabBar(
//                                 indicator: BoxDecoration(
//                                   color: Color.fromARGB(255, 5, 185, 155),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 indicatorColor:
//                                     const Color.fromARGB(255, 241, 241, 241),
//                                 unselectedLabelColor:
//                                     const Color.fromARGB(255, 32, 32, 32),
//                                 labelColor: Color.fromARGB(255, 255, 255, 255),
//                                 controller: tabController,
//                                 tabs: const [
//                                   Tab(
//                                     text: "Upcoming",
//                                   ),
//                                   Tab(
//                                     text: "Completed",
//                                   ),
//                                   Tab(
//                                     text: "Cancel",
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
