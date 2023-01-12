import 'package:flutter/cupertino.dart';

import '../../../../Navigation/route.dart';

class ResultScreenViewModel extends ChangeNotifier {
  navigateToHomePage(BuildContext context) {
    Navigator.popAndPushNamed(context, RouteManager.homePage);
    //TODO: implement emptying the list
  }
}
