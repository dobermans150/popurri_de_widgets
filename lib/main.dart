import 'package:flutter/material.dart';

//My Packages
/* import 'package:popurri_de_widgets/src/pages/home_temp.dart'; */
import 'package:popurri_de_widgets/src/pages/alert_page.dart';
import 'package:popurri_de_widgets/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      /* home: HomePage(), */
      initialRoute: '/',
      routes: getAplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
