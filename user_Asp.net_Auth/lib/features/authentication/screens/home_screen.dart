import 'package:flutter/material.dart';

import 'home_try.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen
                      ? GestureDetector(
                          child: const Icon(Icons.arrow_back_ios),
                          onTap: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : GestureDetector(
                          child: const Icon(Icons.menu),
                          onTap: () {
                            setState(() {
                              xOffset = 290;
                              yOffset = 80;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  const Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        decoration: TextDecoration.none),
                  ),
                  Container(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonView(),
            const HomeButtonV(
              positionImage: EdgeInsets.only(left: 15, top: 3, bottom: 3),
              textB: 'Tooth Scan',
              positionEl: EdgeInsets.all(12.0),
              imageB: 'assets/scan.png',
              positionTexr: EdgeInsets.only(top: 32, left: 150),
            ),
            const HomeButtonV(
              positionImage: EdgeInsets.only(top: 3, bottom: 3, left: 240),
              textB: '3D View',
              positionEl: EdgeInsets.only(left: 230, top: 12, bottom: 12),
              imageB: 'assets/3dView.png',
              positionTexr: EdgeInsets.only(top: 32, left: 80),
            ),
            const HomeButtonV(
              positionImage: EdgeInsets.only(left: 15, top: 3, bottom: 3),
              textB: 'Learn',
              positionEl: EdgeInsets.all(12.0),
              imageB: 'assets/cat.png',
              positionTexr: EdgeInsets.only(top: 32, left: 170),
            ),
            const HomeButtonV(
              positionImage: EdgeInsets.only(top: 3, bottom: 3, left: 240),
              textB: 'Contact',
              positionEl: EdgeInsets.only(left: 230, top: 12, bottom: 12),
              imageB: 'assets/contact.png',
              positionTexr: EdgeInsets.only(top: 32, left: 90),
            ),
            const HomeButtonV(
              positionImage: EdgeInsets.only(left: 15, top: 3, bottom: 3),
              textB: 'Learn',
              positionEl: EdgeInsets.all(12.0),
              imageB: 'assets/cat.png',
              positionTexr: EdgeInsets.only(top: 32, left: 170),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButtonV extends StatelessWidget {
  const HomeButtonV({
    super.key,
    required this.textB,
    required this.positionEl,
    required this.positionTexr,
    required this.positionImage,
    this.imageB,
  });
  final String? textB;
  final String? imageB;
  final EdgeInsets positionEl;
  final EdgeInsets positionTexr;
  final EdgeInsets positionImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blueAccent,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeTry()));
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, bottom: 0, top: 1),
            child: Container(
              width: double.infinity,
              height: 105,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      height: 95,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 0),
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  Padding(
                    padding: positionEl,
                    child: Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  Padding(
                    padding: positionImage,
                    child: Image(
                      height: 103,
                      width: 100,
                      image: AssetImage(imageB!),
                    ),
                  ),
                  Padding(
                    padding: positionTexr,
                    child: Text(
                      textB!,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
