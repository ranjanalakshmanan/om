import 'dart:math';
import 'package:flutter/material.dart';
import 'package:om/list.dart';
class list1 extends StatefulWidget {
  const list1({Key? key}) : super(key: key);

  @override
  State<list1> createState() => _list1State();
}

class _list1State extends State<list1> {
  List<int> a=[];
  var list =[];
  TextEditingController text1 =TextEditingController();
  TextEditingController text2 =TextEditingController();
   bool buttonClick=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller:text1,
             ),
          SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState((){
                  a.add(int.parse(text1.text));

                });
              }, child: Text("Calculate",style: TextStyle(fontSize: 25),)),
          TextFormField(
            controller:text2,

          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){

            setState(() {
              var r = a.reduce((value, element) => value > element ? value : element);
              var b = a.reduce((value, element) => value < element ? value : element);
               var l= a.sort();
              if(buttonClick) {
                text2.text = r.toString();
              }else{
                text2.text = b.toString();
              }
              buttonClick = !buttonClick;
            });
            print(a);


           }, child: Text("Calculate at values",style: TextStyle(fontSize: 25),)),

          Expanded(
            child: ListView.builder(
                itemCount:a.length,
                itemBuilder: (BuildContext context, int itemIndex,) {
                  return Text(a[itemIndex].toString());
                  },

      ),),
    ]
    )
    );
  }
}

String? a;