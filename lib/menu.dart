import 'package:flutter/material.dart';

void main() {
  runApp(MyDrawer());
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Drawer Menu'),
      ),
      drawer: SideMenu(onItemTapped: (index) {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context); 
      }),
      body: Center(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    switch (_selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return LoginPage();
      case 2:
        return AboutPage();        
      default:
        return Container();
    }
  }
}
class SideMenu extends StatelessWidget {
  final Function(int) onItemTapped;

  const SideMenu({Key? key, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 40,
          ),
          DrawerListTitle(icon: Icons.home, title: 'Accueil', onTap: () {
            onItemTapped(0);
          }),
          DrawerListTitle(icon: Icons.login, title: 'Connexion', onTap: () {
            onItemTapped(1);
          }),
          DrawerListTitle(icon: Icons.info, title: "À propos", onTap: () {
            onItemTapped(2);
          }),
        ],
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page d\'accueil'),
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(width: 100,height: 20,),
          TextField(
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          TextField(
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page À propos'),
    );
  }
}
