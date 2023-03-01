import 'package:counting/cubit/cubit.dart';
import 'package:counting/cubit/states.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class counting extends StatelessWidget {
   
  
  
  @override
  Widget build(BuildContext context) {
  return BlocProvider(create: (BuildContext context)=>Countercubit(),
  child:BlocConsumer<Countercubit,CounterStates>(
    listener: (context, state) {
      // if(state is IntialCounterstate) 
      // print('initial state');
      //  if(state is MinusCounterState) 
      // print('Minus Counter State${state.counter} ');
      //  if(state is PlusCounterState) 
      // print('Plus Counter state ${state.counter} ');

      
    } ,
    builder:(context, state) {
      return Scaffold(

      appBar: AppBar(title: Text('Counter',),),
      body:Center(
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             TextButton(onPressed: (){
              
                Countercubit.git(context).plus();
                print(Countercubit.git(context).counter);
           
             }, child: Text('Plus')),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,),
               child: Text('${Countercubit.git(context).counter}',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
             ),
             
             
              TextButton(onPressed: (){
                Countercubit.git(context).minus();
                print(Countercubit.git(context).counter);
             
              
              
             }, child: Text('Minus')),




        ],),
      )
    );
    } ,
 ),
  
  
  
  
  );
    // 
  }
 
}

