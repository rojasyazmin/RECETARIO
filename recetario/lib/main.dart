import 'package:flutter/material.dart';
import 'package:recetario/auth/auth.dart';
import 'package:recetario/login_admin/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recetario' ,
      theme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.blue,),
      home: RootPage(auth: Auth(),),     
    );
  }
}
