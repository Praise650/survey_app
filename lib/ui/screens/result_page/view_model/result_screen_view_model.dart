import 'package:flutter/cupertino.dart';

import '../../../../Navigation/route.dart';

class ResultScreenViewModel extends ChangeNotifier {
  navigateToHomePage(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteManager.homePage);
    //TODO: implement emptying the list
  }
}
