import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  double resultat = 0.0;
  var nb1 = TextEditingController();
  var nb2 = TextEditingController();
  void _add() {
    setState(() {
      resultat = double.parse(nb1.text) + double.parse(nb2.text);
    });
  }

  void _soustr() {
    setState(() {
      resultat = double.parse(nb1.text) - double.parse(nb2.text);
    });
  }

  void _mult() {
    setState(() {
      resultat = double.parse(nb1.text) * double.parse(nb2.text);
    });
  }

  void _div() {
    setState(() {
      resultat = double.parse(nb1.text) / double.parse(nb2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculatrice",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Calculatrice",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Saisir le premier nombre",
                  hintText: "0.0",
                ),
                keyboardType: TextInputType.number,
                controller: nb1,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Saiser deuxieme nomber', hintText: '0.0'),
                keyboardType: TextInputType.number,
                controller: nb2,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () => _add(), child: Text("+")),
                  ElevatedButton(onPressed: () => _soustr(), child: Text("-")),
                  ElevatedButton(onPressed: () => _div(), child: Text("/")),
                  ElevatedButton(onPressed: () => _mult(), child: Text("*")),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '$resultat',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
