import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class counting extends StatefulWidget {
  const counting({super.key});

  @override
  State<counting> createState() => _countingState();
}

class _countingState extends State<counting> {
  int counter=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter',),),
      body:Center(
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             TextButton(onPressed: (){
              setState(() {
                counter++;
                print(counter);
              });
             }, child: Text('Plus')),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,),
               child: Text('$counter',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
             ),
             
             
              TextButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });
             }, child: Text('Minus'))




        ],),
      )
    );
  }
}