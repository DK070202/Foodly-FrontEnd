import 'package:mobx/mobx.dart';

part 'search_restaurant_store.g.dart';

class SearchRestaurantStore extends _SearchRestaurantStore
    with _$SearchRestaurantStore {}

abstract class _SearchRestaurantStore with Store {
  @observable
  String currentAddress = '';

  @action
  void updatedAddress(String address) {
    currentAddress = address;
  }

  void dispose() {
    currentAddress = '';
  }
}
