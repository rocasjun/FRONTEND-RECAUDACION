// ignore_for_file: must_be_immutable

part of 'iphone_14_one_bloc.dart';

class Iphone14OneState extends Equatable {
  Iphone14OneState({this.iphone14OneModelObj});

  Iphone14OneModel? iphone14OneModelObj;

  @override
  List<Object?> get props => [
        iphone14OneModelObj,
      ];
  Iphone14OneState copyWith({Iphone14OneModel? iphone14OneModelObj}) {
    return Iphone14OneState(
      iphone14OneModelObj: iphone14OneModelObj ?? this.iphone14OneModelObj,
    );
  }
}
