import 'package:flutter/material.dart';

class Navigation {
  // BACK PAGE
  static back(BuildContext context) {
    Navigator.pop(context);
  }

  // GO TO NEW PAGE
  static intent(BuildContext context, String nameRoute) async {
    Navigator.pushNamed(context, nameRoute);
  }

  // GOTO NEW PAGE /// TIDAK DAPAT KEMBALI KE PAGE SEBELUMNYA

  static intentWithoutBack(BuildContext context, String nameRoute) async {
    Navigator.pushReplacementNamed(context, nameRoute);
  }

  // GO TO NEW PAGE WITH CLEAR ALL ROUTE
  static intentWithClearAllRoutes(
      BuildContext context, String nameRoute) async {
    Navigator.of(context).pushNamedAndRemoveUntil(nameRoute, (route) => false);
  }

  // GO TO NEW PAGE WITH DATA
  static intentWithData(
      BuildContext context, String nameRoute, Object data) async {
    Navigator.pushNamed(context, nameRoute, arguments: data);
  }
}
