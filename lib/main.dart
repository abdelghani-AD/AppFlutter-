import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(const MyApp() );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset("image/opel2018.jpg",alignment: Alignment.center,)
            ),
            const Text("DefaultTextStyle",style: TextStyle(
              color: Colors.blue,
              fontSize: 20,),
              textAlign: TextAlign.left,
            ),
            const Text("On trouve trois variantes du widget Text dans Flutter quinous permettent daffecter ou non les mêmes propriétés destyle à tout son contenu",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),)
          ],
        ),
      ),
    );
  }
}
