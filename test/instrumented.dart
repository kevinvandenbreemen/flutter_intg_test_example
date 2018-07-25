import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_intg_test_example/main.dart';

void main(){
  enableFlutterDriverExtension();

  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}