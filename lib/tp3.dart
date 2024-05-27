import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TestDrawer());
}

class TestDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: "First drawer"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => Home();
}

class Home extends State<MyHomePage> {
  bool isLik = false;
  Icon _coeur = Icon(
    Icons.heart_broken,
    color: Colors.black,
  );
  void like() {
    setState(() {
      if (isLik == true) {
        _coeur = Icon(
          Icons.favorite_sharp,
          color: Colors.red,
        );
      } else {
        _coeur = const Icon(Icons.heart_broken, color: Colors.black);
      }
    });
    isLik = !isLik;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IconButton(
        icon: _coeur,
        onPressed: like,
      ),
    );
  }
}
