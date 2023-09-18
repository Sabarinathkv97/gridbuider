import 'package:flutter/material.dart';

class builder extends StatefulWidget {
  const builder({super.key});

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 233, 232),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "gridview.buider",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemBuilder: (context, index) {
              return Container(
                color: const Color.fromARGB(255, 59, 56, 56),
                margin: EdgeInsets.all(20),
              );
            },
            itemCount: 6,
          )
        ],
      ),
    );
  }
}
