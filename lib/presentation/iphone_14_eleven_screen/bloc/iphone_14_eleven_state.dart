// ignore_for_file: must_be_immutable

part of 'iphone_14_eleven_bloc.dart';

class Iphone14ElevenState extends Equatable {
  Iphone14ElevenState({this.iphone14ElevenModelObj});

  Iphone14ElevenModel? iphone14ElevenModelObj;

  @override
  List<Object?> get props => [
        iphone14ElevenModelObj,
      ];
  Iphone14ElevenState copyWith({Iphone14ElevenModel? iphone14ElevenModelObj}) {
    return Iphone14ElevenState(
      iphone14ElevenModelObj:
          iphone14ElevenModelObj ?? this.iphone14ElevenModelObj,
    );
  }
}
