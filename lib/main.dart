import 'package:flutter/material.dart';

import 'package:tiger_z_app/widgets/convertPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'CoreSansC'),
      home: convertPage(),
    );
  }
}
