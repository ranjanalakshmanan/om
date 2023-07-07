import 'package:flutter/material.dart';

class ListPractice extends StatefulWidget {
  const ListPractice({Key? key}) : super(key: key);

  @override
  State<ListPractice> createState() => _ListPracticeState();
}

class _ListPracticeState extends State<ListPractice> {

  var list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(list.isEmpty);
    list.add(10);
    print(list.single);
    print(list);
    list.add(20);
    print(list);
    list.addAll([20,100]);
    print(list);
    list[0] = 20;
    list[1] = 100;
    print(list);
    print(list.first);
    print(list.isEmpty);
    print(list.isNotEmpty);
    print(list.length);
    print(list.last);
    print(list.reversed);
    print(list);
    list.insert(2, 60);
    print(list);
    list.insertAll(3, [56,57,58]);
    print(list);
    list[5] = 25;
    print(list);
    list.remove(25);
    print(list);
    list.removeAt(2);
    print(list);
    list.removeLast();
    print(list);
    list.removeRange(2, 4);
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Text(list.toString());
  }
}
