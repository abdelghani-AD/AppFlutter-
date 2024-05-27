import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  var loginController = TextEditingController();
  var emailController = TextEditingController();
  var motPasseControler = TextEditingController();
  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Exemple TextField",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Authentification",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: "Saisir votrelogin",
                  hintText: "votre login ici",
                ),
                keyboardType: TextInputType.name,
                controller: loginController,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone_android_outlined,
                  ),
                  labelText: "Saisir votre email",
                  hintText: "votre email ici",
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.password_outlined,
                  ),
                  labelText: "Saisir votre mot de passe",
                  hintText: "votre mot de passe ",
                ),
                obscureText: true,
                controller: motPasseControler,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  debugPrint(
                      "votre login est ${loginController.value.text} - votreemail est ${emailController.value.text} - votre mot de passe est ${motPasseControler.value.text}");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
