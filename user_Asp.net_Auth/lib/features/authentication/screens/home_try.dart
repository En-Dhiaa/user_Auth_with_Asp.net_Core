import 'package:flutter/material.dart';
import 'home_screen.dart';

class HomeTry extends StatefulWidget {
  const HomeTry({super.key});

  @override
  State<HomeTry> createState() => _HomeTryState();
}

class _HomeTryState extends State<HomeTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Try"),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          ButtonView(),
          HomeButtonV(
            positionImage: EdgeInsets.only(left: 15, top: 3, bottom: 3),
            textB: 'Tooth Scan',
            positionEl: EdgeInsets.all(12.0),
            imageB: 'assets/scan.png',
            positionTexr: EdgeInsets.only(top: 32, left: 150),
          ),
          HomeButtonV(
            positionImage: EdgeInsets.only(top: 3, bottom: 3, left: 240),
            textB: '3D View',
            positionEl: EdgeInsets.only(left: 230, top: 12, bottom: 12),
            imageB: 'assets/3dView.png',
            positionTexr: EdgeInsets.only(top: 32, left: 80),
          ),
          HomeButtonV(
            positionImage: EdgeInsets.only(left: 15, top: 3, bottom: 3),
            textB: 'Learn',
            positionEl: EdgeInsets.all(12.0),
            imageB: 'assets/cat.png',
            positionTexr: EdgeInsets.only(top: 32, left: 170),
          ),
          HomeButtonV(
            positionImage: EdgeInsets.only(top: 3, bottom: 3, left: 240),
            textB: 'Contact',
            positionEl: EdgeInsets.only(left: 230, top: 12, bottom: 12),
            imageB: 'assets/contact.png',
            positionTexr: EdgeInsets.only(top: 32, left: 90),
          ),
        ],
      )),
    );
  }
}

class ButtonView extends StatelessWidget {
  const ButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ButtonBar(
        children: <Widget>[
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.all(5)),
              onPressed: () {},
              icon: const Icon(Icons.token_outlined),
              label: const Text("Pre-Molar")),
        ],
      ),
    );
  }
}

class ListViewScroller extends StatelessWidget {
  const ListViewScroller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 20,
      childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
        if (index < 0 || index > 5) {
          return null;
        }
        return ListTile(
          leading: Text(
            "$index",
            style: const TextStyle(fontSize: 30),
          ),
          title: Text("Title $index"),
          subtitle: const Text("Description here"),
        );
      }),
    );
  }
}
