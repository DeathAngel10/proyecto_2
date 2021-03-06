import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:proyecto_app/home.dart';
import 'package:proyecto_app/profile_places.dart';
import 'package:proyecto_app/search_places.dart';

class PlacesCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final places = Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white.withAlpha(50),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.lightBlue,
                )
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.lightBlue,
                  )
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.lightBlue,
                  )
              )
            ],
          ),
          tabBuilder: (BuildContext context, int index){
            CupertinoTabView cupertinoTabView;

            switch(index){
              case 0:
                cupertinoTabView = CupertinoTabView(
                  builder: (BuildContext context) => MyHome(),
                );
                break;
              case 0:
                cupertinoTabView = CupertinoTabView(
                  builder: (BuildContext context) => SearchPlaces(),
                );
                break;
              case 2:
                cupertinoTabView = CupertinoTabView(
                  builder: (BuildContext context) => ProfilePlaces(),
                );
                break;
            }

            return cupertinoTabView;
          }
      ),
    );
  }

}