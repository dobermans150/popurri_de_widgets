import 'package:flutter/material.dart';
import 'package:popurri_de_widgets/src/pages/alert_page.dart';

import 'package:popurri_de_widgets/src/providers/menu_provider.dart';
import 'package:popurri_de_widgets/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    /*  print(menuProvider.cargarData()); */
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print('builder');
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          /*  final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route); */
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
