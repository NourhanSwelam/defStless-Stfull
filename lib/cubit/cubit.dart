
import 'package:bloc/bloc.dart';
import 'package:counting/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Countercubit extends Cubit<CounterStates>{
  Countercubit():super(IntialCounterstate());
 static Countercubit git(context)=>BlocProvider.of(context);
 int counter=1;
 void minus(){
  counter--;
  emit(MinusCounterState(counter));
 }
 void plus(){
  counter++;
    emit(PlusCounterState(counter));

 }
}