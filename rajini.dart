import 'package:flutter/material.dart';
import 'package:om/om.dart';
import 'package:om/shalu.dart';
import 'package:om/white.dart';




class abc extends StatefulWidget {
  const abc({Key? key}) : super(key: key);

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {


  int _index = 0;

  var pages = [

    white(),
    om(),


  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_index],

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Profile"),



          ],
          currentIndex: _index,
          onTap: _tap,
        ),
      );
  }
}













  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class sara extends StatefulWidget {
  const sara({Key? key}) : super(key: key);

  @override
  State<sara> createState() => _saraState();
}

class _saraState extends State<sara> {

  int index = 0 ;

  final pages = [
    white(),
    om(),


  ];

  void tap(a)
  {
    setState(() {

      index= a;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "profile"),
        ],
        currentIndex: index,
        onTap: tap,
      ),
    );
  }
}

