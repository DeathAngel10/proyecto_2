import 'package:flutter/material.dart';
import 'package:proyecto_app/profile_places.dart';
import 'package:proyecto_app/search_places.dart';

import 'home.dart';

class Places extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Places();
  }
}

class _Places extends State<Places>{

  int currentIndex = 0;
  List<Widget> pantallas = <Widget> [
    MyHome(),
    SearchPlaces(),
    ProfilePlaces()
  ];
  void cambiarPantalla(int index){
    //setState
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.blue
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: Text("")
            ),
          ],
          onTap: cambiarPantalla,
        ),
      ),
      body: pantallas[currentIndex],
    );
  }

}