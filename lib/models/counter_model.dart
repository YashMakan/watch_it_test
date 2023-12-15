import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  final ValueNotifier<int> counter = ValueNotifier(0);
  final ValueNotifier<TextEditingController> controller = ValueNotifier(TextEditingController());
}