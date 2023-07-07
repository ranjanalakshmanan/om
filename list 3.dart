import 'package:flutter/material.dart';
class list3 extends StatefulWidget {
  const list3({Key? key}) : super(key: key);

  @override
  State<list3> createState() => _list3State();
}

class _list3State extends State<list3> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

var birthyear = [];
var birthtdate =[];
var birthtime =[];
var currentyear =[];
var currentdate =[];
var cuurenttime =[];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Age Calculator")),
      ),

      body:Column(
        children: [
          SizedBox(height: 20,),
         Container(

           height: 100,
           width: 250,
           decoration: BoxDecoration(
               border: Border.all()
           ),
           child: TextFormField(
             controller: text1,
           ),

         ),
          Row(
            children: [
              Text("Age",style: TextStyle(fontSize: 25),),
            ],
          ),
          SizedBox(height: 50,),
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: TextFormField(
              controller: text2,
            ),
          ),
          Row(
            children: [
              Text("Date Of Birth",style: TextStyle(fontSize: 25),),
            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
             var z =[];
          }, child: Text("calculate",style: TextStyle(fontSize: 25),)),
        ],
      ),
    );
  }
}
