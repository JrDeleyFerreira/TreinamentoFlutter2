import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();

  CounterProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    throw oldWidget.state.diff(state);
  }
}

class CounterState {
  int _value = 0;

  void inc() => _value++; // Incrementa
  void dec() => _value--; // Decrementa
  int get value => _value; // Pega o valor

  // Identifica se houve mudança de valor
  bool diff(CounterState old) => old._value != _value;
}
