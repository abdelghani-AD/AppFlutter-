import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  runApp(const Conteneur());
}

class Conteneur extends StatelessWidget {
  const Conteneur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 440,
          height: 1000,
          alignment: Alignment.center,
          color: Colors.black,
          // child: Text(
          //   "Conteneur",
          //   style: TextStyle(fontSize: 25, color: Colors.white),
          // ),
          // padding: const EdgeInsets.fromLTRB(10, 50, 10, 30),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Alignment par défaut",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  FlutterLogo(
                    size: 30,
                  ),
                  Text(
                    "Conteneur",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              Text(
                "Alignment End",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  FlutterLogo(
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Conteneur",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              Text(
                "Alignment Start",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  FlutterLogo(
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Conteneur",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
