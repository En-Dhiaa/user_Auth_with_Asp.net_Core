import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DModelScreen_1 extends StatefulWidget {
  const DModelScreen_1({super.key});

  @override
  State<DModelScreen_1> createState() => _DModelScreen_1State();
}

class _DModelScreen_1State extends State<DModelScreen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(140), child: setPage()),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Image(
                  width: double.infinity,
                  height: 300,
                  image: AssetImage(
                    "assets/openedTeeth.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              //width: 160,
              height: 150,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(8),
                      color: Colors.transparent,
                      child: TeethButtonOfRow(
                        image: "assets/teeth.png",
                        title: "2nd Premorlar",
                        text: '${index + 1}',
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

class TeethButtonOfRow extends StatelessWidget {
  const TeethButtonOfRow({
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
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(159, 35, 31, 31).withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 226, 226, 226)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Center(
                    child: Image(
                      height: 70,
                      image: AssetImage(image!),
                    ),
                  ),
                  Text(
                    title!,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 21, 21, 39)),
                  ),
                  Text(
                    text!,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(213, 18, 18, 28)),
                  ),
                ],
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

Widget setPage() {
  Color? red800 = Colors.red[800];

  return Stack(
    children: <Widget>[
      Container(
        // Background
        child: Center(
          child: Text(
            "Home",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        color: red800,
        height: 200, 
        width: double.infinity,
      ),

      Container(), // Required some widget in between to float AppBar

      Positioned(
        // To take AppBar Size only
        top: 100.0,
        left: 20.0,
        right: 20.0,
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 5, 5),
          leading: Icon(
            Icons.menu,
            color: red800,
          ),
          primary: false,
          title: const TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: red800),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: red800),
              onPressed: () {},
            )
          ],
        ),
      )
    ],
  );
}
