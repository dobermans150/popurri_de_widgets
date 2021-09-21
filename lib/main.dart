import 'package:flutter/material.dart';

//My Packages
/* import 'package:popurri_de_widgets/src/pages/home_temp.dart'; */
import 'package:popurri_de_widgets/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
