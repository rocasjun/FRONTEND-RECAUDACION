import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rocasjun_s_application5/presentation/iphone_14_nine_screen/models/iphone_14_nine_model.dart';
part 'iphone_14_nine_event.dart';
part 'iphone_14_nine_state.dart';

class Iphone14NineBloc extends Bloc<Iphone14NineEvent, Iphone14NineState> {
  Iphone14NineBloc(Iphone14NineState initialState) : super(initialState) {
    on<Iphone14NineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14NineInitialEvent event,
    Emitter<Iphone14NineState> emit,
  ) async {}
}
