import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rocasjun_s_application5/presentation/iphone_14_ten_screen/models/iphone_14_ten_model.dart';
part 'iphone_14_ten_event.dart';
part 'iphone_14_ten_state.dart';

class Iphone14TenBloc extends Bloc<Iphone14TenEvent, Iphone14TenState> {
  Iphone14TenBloc(Iphone14TenState initialState) : super(initialState) {
    on<Iphone14TenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14TenInitialEvent event,
    Emitter<Iphone14TenState> emit,
  ) async {}
}
