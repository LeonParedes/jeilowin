import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class MyStateProvider extends StateProvider<MyStateProvider> {
  @override
  MyStateProvider createState() {
    return MyStateProvider();
  }

  @override
  MyStateProvider copyWith(MyStateProvider newState) {
    return MyStateProvider(
      key: ValueKey<String>(newState.key),
      MyStateProvider: newState.MyStateProvider,
    );
  }
}