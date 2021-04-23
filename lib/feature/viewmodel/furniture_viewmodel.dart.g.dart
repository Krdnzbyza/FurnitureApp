// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_viewmodel.dart.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FurnitureViewModel on _FurnitureViewModelBase, Store {
  final _$furnitureAtom = Atom(name: '_FurnitureViewModelBase.furniture');

  @override
  List<Furniture> get furniture {
    _$furnitureAtom.reportRead();
    return super.furniture;
  }

  @override
  set furniture(List<Furniture> value) {
    _$furnitureAtom.reportWrite(value, super.furniture, () {
      super.furniture = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FurnitureViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$takeAllDataAsyncAction =
      AsyncAction('_FurnitureViewModelBase.takeAllData');

  @override
  Future<void> takeAllData() {
    return _$takeAllDataAsyncAction.run(() => super.takeAllData());
  }

  final _$_FurnitureViewModelBaseActionController =
      ActionController(name: '_FurnitureViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_FurnitureViewModelBaseActionController.startAction(
        name: '_FurnitureViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_FurnitureViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
furniture: ${furniture},
isLoading: ${isLoading}
    ''';
  }
}
