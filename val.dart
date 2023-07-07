import 'package:flutter/material.dart';

class Sam extends StatefulWidget {
  const Sam({Key? key}) : super(key: key);

  @override
  State<Sam> createState() => _SamState();
}

class _SamState extends State<Sam> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 100,),
            TextFormField(
              validator: (val)
              {
                if(val==null || val.isEmpty)
                  {
                    return "please enter name";
                  }
              },
            ),
            TextFormField(
                       validator: (value) {
                         if (value!.isEmpty ||
                             !RegExp(
                                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                 .hasMatch(value)) {
                           return 'Enter a valid email!';
                         }
                       }
            ),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){

              if(_key.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                }

            }, child: Text("Ok")),
          ],
        ),
      ),
    );
  }
}




