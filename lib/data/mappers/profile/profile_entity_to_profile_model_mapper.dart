import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';

@injectable
class ProfileEntityToModelIsarMapper {
  ProfileModelIsar map(ProfileEntity profileEntity) {
    final speciesName = profileEntity.species.map((e) => e.name).toList();
    return ProfileModelIsar(
      id: profileEntity.id,
      name: profileEntity.name,
      city: profileEntity.city,
      species: speciesName.map((e) => e[0].toUpperCase() + e.substring(1)).toList(),
    );
  }

  List<ProfileModelIsar> mapList(List<ProfileEntity> profileEntity) {
    return profileEntity.map((e) => map(e)).toList();
  }
}
