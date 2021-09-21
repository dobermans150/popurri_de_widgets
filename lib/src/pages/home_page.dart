import 'package:flutter/material.dart';

import 'package:popurri_de_widgets/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
    print(menuProvider.cargarData());
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [ListTile(title: Text('Hola Mundo'))];
  }
}