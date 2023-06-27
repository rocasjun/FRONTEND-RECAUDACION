import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rocasjun_s_application5/presentation/iphone_14_twelve_screen/models/iphone_14_twelve_model.dart';
part 'iphone_14_twelve_event.dart';
part 'iphone_14_twelve_state.dart';

class Iphone14TwelveBloc
    extends Bloc<Iphone14TwelveEvent, Iphone14TwelveState> {
  Iphone14TwelveBloc(Iphone14TwelveState initialState) : super(initialState) {
    on<Iphone14TwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14TwelveInitialEvent event,
    Emitter<Iphone14TwelveState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphone14ElevenScreen,
      );
    });
  }
}
