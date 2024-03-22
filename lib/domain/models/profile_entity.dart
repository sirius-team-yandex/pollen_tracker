import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';

part 'profile_entity.freezed.dart';
@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required Id id,
    required String name,
    required String city,
    required Species species,
  }) = _ProfileEntity;
}