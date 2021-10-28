import 'package:flutter/material.dart';
import 'package:simple_map_viewer/simple_map_viewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map View Example'),
        ),
        body: const SimpleMapView(),
      ),
    );
  }
}
