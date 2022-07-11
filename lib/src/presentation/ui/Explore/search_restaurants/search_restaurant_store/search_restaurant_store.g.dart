// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_restaurant_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchRestaurantStore on _SearchRestaurantStore, Store {
  late final _$currentAddressAtom =
      Atom(name: '_SearchRestaurantStore.currentAddress', context: context);

  @override
  String get currentAddress {
    _$currentAddressAtom.reportRead();
    return super.currentAddress;
  }

  @override
  set currentAddress(String value) {
    _$currentAddressAtom.reportWrite(value, super.currentAddress, () {
      super.currentAddress = value;
    });
  }

  late final _$_SearchRestaurantStoreActionController =
      ActionController(name: '_SearchRestaurantStore', context: context);

  @override
  void updatedAddress(String address) {
    final _$actionInfo = _$_SearchRestaurantStoreActionController.startAction(
        name: '_SearchRestaurantStore.updatedAddress');
    try {
      return super.updatedAddress(address);
    } finally {
      _$_SearchRestaurantStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentAddress: ${currentAddress}
    ''';
  }
}
