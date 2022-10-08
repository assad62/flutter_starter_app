import 'package:injectable/injectable.dart';

import '../common/base_model.dart';
import '../common/viewstate.dart';
import 'package:rxdart/rxdart.dart';
@injectable
class HomeModel extends BaseModel{


  HomeModel();
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
    super.dispose();
    rxCounter.close();
  }

  void updateRxCounter() {
    initialRxCount ++;
    rxCounter.sink.add(initialRxCount);
  }


}