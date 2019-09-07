import 'package:flutter/material.dart';


class Clprv with ChangeNotifier {

 String locale = "en";
String lcnt = "US";

void changelocale(l,c){
  locale = l;
  lcnt = c;
  notifyListeners();
}

}