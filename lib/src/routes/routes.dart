import 'package:flutter/material.dart';
import 'package:popurri_de_widgets/src/pages/alert_page.dart';
import 'package:popurri_de_widgets/src/pages/avatar_page.dart';
import 'package:popurri_de_widgets/src/pages/card_pages.dart';
import 'package:popurri_de_widgets/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
