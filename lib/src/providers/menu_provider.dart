import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> _opciones = [];

  _MenuProvider() {
    /* cargarData(); */
  }

  /* Extrae la data del menu con sus respectivas rutas */
  Future<List<dynamic>> cargarData() async {
    try {
      final resp = await rootBundle.loadString('lib/data/menu_opts.json');
      Map dataMap = await json.decode(resp);
      print(dataMap['rutas']);
      _opciones = dataMap['rutas'];
      return _opciones;
    } catch (error) {
      print(error);
      return [];
    }
  }
}

final menuProvider = new _MenuProvider();
