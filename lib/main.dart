import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget{
  Home({
    super.key
  });
  String str="";
   final des= TextEditingController();
     final cdes= TextEditingController();

  @override
 Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child:Column(children: [
         TextField(
        controller: des,
        minLines: 5,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value){
          cdes.text= value.toUpperCase();
        },
      ),
      SizedBox(height: 20),
       TextField(
        controller: cdes,
         readOnly: true,
        minLines: 5,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        ),
        
       
      ]),
      )
    );
  }
}