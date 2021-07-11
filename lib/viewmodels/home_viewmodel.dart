import '../common/base_model.dart';
import '../common/viewstate.dart';

class HomeModel extends BaseModel{
  int counter = 0;
  void onFirstLoad(){

  }

  void incrementCounter(){
     counter++;
     setState(ViewState.Idle);
  }
}