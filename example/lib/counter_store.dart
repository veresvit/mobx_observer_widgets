import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter implements Store {

  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
