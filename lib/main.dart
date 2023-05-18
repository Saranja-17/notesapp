import 'package:flutter/material.dart';
import 'package:notesapp/screens/home/home_view.dart';
import 'package:notesapp/screens/work/work_view.dart';

void main() {
  runApp(MaterialApp(routes: {
    WorkView.routeName: (context) => const WorkView(),
  }, home: HomeView()));
}
