import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rocasjun_s_application5/presentation/iphone_14_one_screen/models/iphone_14_one_model.dart';
part 'iphone_14_one_event.dart';
part 'iphone_14_one_state.dart';

class Iphone14OneBloc extends Bloc<Iphone14OneEvent, Iphone14OneState> {
  Iphone14OneBloc(Iphone14OneState initialState) : super(initialState) {
    on<Iphone14OneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14OneInitialEvent event,
    Emitter<Iphone14OneState> emit,
  ) async {}
}
