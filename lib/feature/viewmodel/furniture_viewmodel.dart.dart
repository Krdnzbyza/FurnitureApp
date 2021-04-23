import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/feature/core/network/application_constans.dart';
import 'package:mobx/mobx.dart';

import '../model/furniture.dart';

part 'furniture_viewmodel.dart.g.dart';

class FurnitureViewModel = _FurnitureViewModelBase with _$FurnitureViewModel;

abstract class _FurnitureViewModelBase with Store {
  BuildContext? context;
  @observable
  List<Furniture> furniture = [];

  final url = ApplicationConstant.instance.baseUrl;

  @observable
  bool isLoading = false;

  @action
  Future<void> takeAllData() async {
    changeLoading();
    final response = await Dio().get(url);
    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      furniture = responseData.map((e) => Furniture.fromMap(e)).toList();
    }
    changeLoading();
  }

  void setContext(BuildContext? context) {
    this.context = context;
    takeAllData();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
