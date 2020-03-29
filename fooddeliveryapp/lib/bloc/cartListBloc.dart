import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fooddeliveryapp/bloc/provider.dart';
import 'package:fooddeliveryapp/model/foodItem.dart';
import 'package:rxdart/rxdart.dart';

class CartListBloc extends BlocBase{

  CartListBloc();

  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);

  CartProvider provider = CartProvider();
  // output
  Stream<List<FoodItem>> get listStream => _listController.stream;
  //input
  Sink<List<FoodItem>> get listSink => _listController.sink;

  add(FoodItem foodItem) {
    listSink.add(provider.add(foodItem));
  }

  remove(FoodItem foodItem) {
    listSink.add(provider.remove(foodItem));
  }

@override
  void dispose() {
    _listController.close();
    super.dispose();
  }
}
