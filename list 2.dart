import 'package:flutter/material.dart';

class list2 extends StatefulWidget {
  const list2({Key? key}) : super(key: key);

  @override
  State<list2> createState() => _list2State();
}

class _list2State extends State<list2> {
  int value1 = 20;
  int value2 = 10;
  int value3 = 20;
  var list = [];
  int lessthan = 0;

  @override
  void initState() {
    // TODO:implement initstate
    super.initState();
    if(value1 < value2)
      {
        if(value1 < value3)
          {
            lessthan = value1;
          }
        else
          {
            lessthan = value3;
          }
      }
    else
      {
        if(value2 < value3)
          {
            lessthan = value2;
          }
        else
          {
            lessthan = value3;
          }
      }

         print(lessthan);
  }

  @override
  Widget build(BuildContext context) {
    return Text(list.toString());
  }
}
