import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/rendering.dart';

import 'home.dart';

/*
void main() {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

  runApp(const Main());
}
*/

void main() {
  //debugPaintSizeEnabled = true;
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(DevicePreview(builder: (context) => const Main()));
}

class Main extends StatefulWidget {
  const Main({super.key});

  _main createState() => _main();
}

class _main extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
