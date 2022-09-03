import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  const factory AppSettingsModel({
    @JsonKey(name: 'about_text') @Default('') final String aboutText,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
}
