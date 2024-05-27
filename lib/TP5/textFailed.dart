import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomeApp(title: 'M208 TP5',),
    );
  }
}

class MyHomeApp extends StatefulWidget {
MyHomeApp({super.key, required this.title});
final String title;
@override
State<MyHomeApp> createState() => HomeApp();
}

class HomeApp extends State<MyHomeApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          children: [
            Text("Login",
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Saiser votre user",
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Saiser mot de passe',
                  labelStyle: TextStyle(fontSize: 15)
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: ()=>{}, child: Text("Login"))
          ],),
      ),
    );
  }

}