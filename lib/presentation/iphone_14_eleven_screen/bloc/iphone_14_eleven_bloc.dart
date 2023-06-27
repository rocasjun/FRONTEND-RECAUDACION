import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcondominiol_item_model.dart';
import 'package:rocasjun_s_application5/presentation/iphone_14_eleven_screen/models/iphone_14_eleven_model.dart';
part 'iphone_14_eleven_event.dart';
part 'iphone_14_eleven_state.dart';

class Iphone14ElevenBloc
    extends Bloc<Iphone14ElevenEvent, Iphone14ElevenState> {
  Iphone14ElevenBloc(Iphone14ElevenState initialState) : super(initialState) {
    on<Iphone14ElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ElevenInitialEvent event,
    Emitter<Iphone14ElevenState> emit,
  ) async {
    emit(state.copyWith(
        iphone14ElevenModelObj: state.iphone14ElevenModelObj?.copyWith(
            listcondominiolItemList: fillListcondominiolItemList())));
  }

  List<ListcondominiolItemModel> fillListcondominiolItemList() {
    return List.generate(2, (index) => ListcondominiolItemModel());
  }
}
