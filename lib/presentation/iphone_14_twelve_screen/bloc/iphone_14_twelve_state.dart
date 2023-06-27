// ignore_for_file: must_be_immutable

part of 'iphone_14_twelve_bloc.dart';

class Iphone14TwelveState extends Equatable {
  Iphone14TwelveState({this.iphone14TwelveModelObj});

  Iphone14TwelveModel? iphone14TwelveModelObj;

  @override
  List<Object?> get props => [
        iphone14TwelveModelObj,
      ];
  Iphone14TwelveState copyWith({Iphone14TwelveModel? iphone14TwelveModelObj}) {
    return Iphone14TwelveState(
      iphone14TwelveModelObj:
          iphone14TwelveModelObj ?? this.iphone14TwelveModelObj,
    );
  }
}
