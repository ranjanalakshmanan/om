import 'package:flutter/material.dart';
class jack extends StatefulWidget {
  const jack({Key? key}) : super(key: key);
  @override
  State<jack> createState() => _jackState();
}

class _jackState extends State<jack> {
  List<Widget> _strings = [];

  @override
  Widget build(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          SizedBox(height: 40,),
          TextFormField(
            controller: text1,style: TextStyle(fontSize: 20,color: Colors.deepPurpleAccent),
          ),
          SizedBox(height: 40,),
               ElevatedButton(onPressed: (){
                 text2.text =text1.text;
               }, child: Text("OK",style: TextStyle(fontSize: 20),)),
          SizedBox(height: 40,),
          Container(
            height: 250,
            width: 250,
            decoration:BoxDecoration(
              border: Border.all(),
              color:Colors.lightGreenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
