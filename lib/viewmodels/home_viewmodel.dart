import 'package:notlar_flutter/common/base_model.dart';
import 'package:notlar_flutter/common/viewstate.dart';

class HomeModel extends BaseModel{
  int counter = 0;
  void onFirstLoad(){

  }

  void incrementCounter(){
     counter++;
     setState(ViewState.Idle);
  }
}