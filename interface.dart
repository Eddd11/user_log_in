import 'package:flutter/material.dart';
import 'interface_tile.dart';

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'User log_in',
      home: UserLogIn(),

    );
  }
}
