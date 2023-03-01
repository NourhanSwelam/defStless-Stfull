abstract  class  CounterStates{}
class IntialCounterstate extends CounterStates{}
class MinusCounterState extends CounterStates{
  final int counter;
  MinusCounterState(this.counter);
}

class PlusCounterState extends CounterStates{
   final int counter;
  PlusCounterState(this.counter);
}
