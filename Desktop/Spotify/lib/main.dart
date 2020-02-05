import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotibee/mainpage.dart';
import 'package:spotibee/musicas.dart';
import 'package:spotibee/procurar.dart';
import 'package:spotibee/premium.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        body:show(index),
        bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.white54,
            selectedItemColor: Colors.white,
            onTap: ((int x) {
              setState(() {
                index = x;
                show(index);
              });
            }),
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Início"),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Procurar'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                title: Text("Biblioteca"),
              ),
              new BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify),
                title: Text("Premium"),
              ),
            ]),
      ),
    );
  }
}

Widget show (int index) {
  switch (index) {
    case 0:
      return MainPage();
      break;
    case 1:
      return Procurar();
      break;
    case 2:
      return Musicas();
      break;
    case 3:
      return Premium();
      break;
  }
}
