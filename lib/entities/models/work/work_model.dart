import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

@freezed
class WorkModel with _$WorkModel {
  const factory WorkModel({
    @Default('') String title,
    @Default(false) bool checked,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
}
