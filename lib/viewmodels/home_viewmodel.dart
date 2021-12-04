import '../common/base_model.dart';
import '../common/viewstate.dart';
import 'package:rxdart/rxdart.dart';
class HomeModel extends BaseModel{
  int counter = 0;
  int initialRxCount = 0;
  late BehaviorSubject<int> rxCounter;
  void onFirstLoad(){

    rxCounter = new BehaviorSubject<int>.seeded(this.initialRxCount); //
  }

  void incrementCounter(){
     counter++;
     setState(ViewState.Idle);
  }

  @override
  void dispose(){
    rxCounter.close();
  }

  void updateRxCounter() {
    initialRxCount ++;
    rxCounter.sink.add(initialRxCount);
  }


}