// ignore_for_file: must_be_immutable

part of 'iphone_14_ten_bloc.dart';

class Iphone14TenState extends Equatable {
  Iphone14TenState({this.iphone14TenModelObj});

  Iphone14TenModel? iphone14TenModelObj;

  @override
  List<Object?> get props => [
        iphone14TenModelObj,
      ];
  Iphone14TenState copyWith({Iphone14TenModel? iphone14TenModelObj}) {
    return Iphone14TenState(
      iphone14TenModelObj: iphone14TenModelObj ?? this.iphone14TenModelObj,
    );
  }
}
