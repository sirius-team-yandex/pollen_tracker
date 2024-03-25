import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';

part 'profile_entity.freezed.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required int profileId,
    required int cityId,
    required String name,
    required List<Species> species,
  }) = _ProfileEntity;
}
