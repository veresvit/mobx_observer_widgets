// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Counter on _Counter, Store {
  final _$counterAtom = Atom(name: '_Counter.counter');

  @override
  int get counter {
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.checkIfStateModificationsAreAllowed(_$counterAtom);
    super.counter = value;
    _$counterAtom.reportChanged();
  }

  final _$textNewsAtom = Atom(name: '_Counter.textNews');

  @override
  String get textNews {
    _$textNewsAtom.reportObserved();
    return super.textNews;
  }

  @override
  set textNews(String value) {
    _$textNewsAtom.context.checkIfStateModificationsAreAllowed(_$textNewsAtom);
    super.textNews = value;
    _$textNewsAtom.reportChanged();
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  void increment() {
    final _$actionInfo = _$_CounterActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }
}
