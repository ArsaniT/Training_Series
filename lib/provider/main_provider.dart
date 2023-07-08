import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier{
  MainProvider();

  bool overViewIsSelected =true;
  bool classesViewIsSelected =false;
  bool communityViewIsSelected =false;

  showOverview(){
     overViewIsSelected =true;
     classesViewIsSelected =false;
     communityViewIsSelected =false;
    notifyListeners();
  }  showClasses(){
     overViewIsSelected =false;
     classesViewIsSelected =true;
     communityViewIsSelected =false;
    notifyListeners();
  }
  showCommunity(){
     overViewIsSelected =false;
     classesViewIsSelected =false;
     communityViewIsSelected =true;
    notifyListeners();
  }

}