import 'package:flutter/material.dart';
import 'package:quis_mobile/data.dart';
import 'package:quis_mobile/home.dart';
import 'package:quis_mobile/layang.dart';
import 'package:quis_mobile/segitiga.dart';


class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Data(),
    Segitiga(),
    LayangLayang(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome, Fajar"),
      ),

    body: screens[currentIndex],

    
    bottomNavigationBar : BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Data',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: 'Segitiga',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: 'Layang layang',
        ),
      ],
    ),
      

    );
  }

}


