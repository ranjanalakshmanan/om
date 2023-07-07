import 'dart:js_util';

import 'package:flutter/material.dart';
class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

  var list =[];


  void initState() {
    // TODO: implement initState
    super.initState();
    list.add(10);
    print(list);
    list.addAll([10,20,30,40,50,60,70,80,90,100]);
    print(list);
    list[0] = 5;
    list[1] = 10;
    list[2] = 15;
    list[3] = 20;
    list[4] = 30;
    list [5]= 40;
    list [6]= 50;
    list [7]= 60;
    list [8]= 70;
    list [9] =80;
    list [10] =90;

  }



















  @override
  Widget build(BuildContext context) {
    return Text(list.toString());
  }
}
