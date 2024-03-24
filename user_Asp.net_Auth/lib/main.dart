import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_application_3/features/authentication/models/Widgits/LoginForm.dart';

import 'Provider/user_provider.dart';
import 'features/authentication/screens/Login/login.dart';
//import 'package:flutter_application_3/app.dart';
//import 'features/authentication/models/Widgits/LoginForm.dart';
//import 'features/authentication/screens/trygetAPI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => User_Provider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              //width: 160,
              height: 60,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 50,
                      margin: const EdgeInsets.all(8),
                      color: Colors.amber,
                      child: HomeButtonOfRow(
                        image: "assets/teeth.png",
                        title: "2nd Premorlar",
                        text: '${index + 1}',
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            HomeButton(
                isLeft: true,
                fontsize: 25,
                image: "assets/teeth.png",
                text: "tooth Scans",
                PaddingEdgeInsetsOnly: EdgeInsets.only(left: 20)),
            SizedBox(
              height: 10,
            ),
            HomeButton(
                isLeft: false,
                fontsize: 25,
                image: "assets/teeth.png",
                text: "tooth Scans",
                PaddingEdgeInsetsOnly: EdgeInsets.only(right: 20)),
            SizedBox(
              height: 10,
            ),
            HomeButton(
                isLeft: true,
                fontsize: 25,
                image: "assets/teeth.png",
                text: "tooth Scans",
                PaddingEdgeInsetsOnly: EdgeInsets.only(left: 20)),
            SizedBox(
              height: 10,
            ),
            HomeButton(
                isLeft: false,
                fontsize: 25,
                image: "assets/teeth.png",
                text: "tooth Scans",
                PaddingEdgeInsetsOnly: EdgeInsets.only(right: 20)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.image,
    required this.text,
    required this.fontsize,
    required this.isLeft,
    required this.PaddingEdgeInsetsOnly,
  });

  final String? image, text;
  final double fontsize;
  final EdgeInsetsGeometry PaddingEdgeInsetsOnly;
  final bool isLeft;
  final MainAxisAlignment? _mainAxisAlignmentLeft = MainAxisAlignment.start;
  final MainAxisAlignment? _mainAxisAlignmentRight = MainAxisAlignment.end;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 320,
            height: 80,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2.5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 239, 239, 239)),
            child: Row(
              mainAxisAlignment:
                  isLeft ? _mainAxisAlignmentLeft! : _mainAxisAlignmentRight!,
              children: [
                isLeft
                    ? Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            color: Color.fromARGB(255, 78, 0, 245)),
                        child: Center(
                          child: Image(
                            height: 70,
                            image: AssetImage(image!),
                          ),
                        ),
                      )
                    : Padding(
                        padding: PaddingEdgeInsetsOnly,
                        child: Text(
                          text!,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: fontsize,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 25, 1, 123)),
                        ),
                      ),
                isLeft
                    ? Padding(
                        padding: PaddingEdgeInsetsOnly,
                        child: Text(
                          text!,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: fontsize,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 25, 1, 123)),
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            color: Color.fromARGB(255, 78, 0, 245)),
                        child: Center(
                          child: Image(
                            height: 70,
                            image: AssetImage(image!),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image', image));
  }
}

class HomeButtonOfRow extends StatelessWidget {
  const HomeButtonOfRow({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });

  final String? image, text, title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160,
        height: 55,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2.5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(7),
            color: const Color.fromARGB(255, 50, 0, 158)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 4, top: 4),
              child: Column(
                children: [
                  Text(
                    title!,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 253, 253, 255)),
                  ),
                  Text(
                    text!,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(214, 253, 253, 255)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12, bottom: 3, top: 5, left: 8),
              child: Image(
                height: 70,
                image: AssetImage(image!),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image', image));
  }
}
