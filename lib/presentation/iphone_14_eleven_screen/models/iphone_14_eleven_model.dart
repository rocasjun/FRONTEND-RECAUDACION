// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listcondominiol_item_model.dart';

/// This class defines the variables used in the [iphone_14_eleven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ElevenModel extends Equatable {
  Iphone14ElevenModel({this.listcondominiolItemList = const []});

  List<ListcondominiolItemModel> listcondominiolItemList;

  Iphone14ElevenModel copyWith(
      {List<ListcondominiolItemModel>? listcondominiolItemList}) {
    return Iphone14ElevenModel(
      listcondominiolItemList:
          listcondominiolItemList ?? this.listcondominiolItemList,
    );
  }

  @override
  List<Object?> get props => [listcondominiolItemList];
}
