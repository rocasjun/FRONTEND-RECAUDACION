// ignore_for_file: must_be_immutable

part of 'iphone_14_nine_bloc.dart';

class Iphone14NineState extends Equatable {
  Iphone14NineState({this.iphone14NineModelObj});

  Iphone14NineModel? iphone14NineModelObj;

  @override
  List<Object?> get props => [
        iphone14NineModelObj,
      ];
  Iphone14NineState copyWith({Iphone14NineModel? iphone14NineModelObj}) {
    return Iphone14NineState(
      iphone14NineModelObj: iphone14NineModelObj ?? this.iphone14NineModelObj,
    );
  }
}
