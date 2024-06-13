import 'package:flutter/material.dart';
import 'package:flutter_content_cubit/counter_cubit/view/counter_page.dart';

class CounterApp extends MaterialApp{

  const CounterApp ({super.key})
  : super (
      home: const CounterPage(),
  );
}