import 'package:flutter/material.dart';
import 'package:localised/auth.dart';
import 'package:localised/user.dart';
import 'package:localised/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Auth().user,
      child: MaterialApp
      (
        home: Wrapper(),
      ),
    );
  }
}