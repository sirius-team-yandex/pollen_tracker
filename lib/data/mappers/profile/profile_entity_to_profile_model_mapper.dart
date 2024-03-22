import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';

class ProfileEntityToModelIsarMapper {
  ProfileModelIsar map(ProfileEntity profileEntity) {
    final speciesName = profileEntity.species.name;
    return ProfileModelIsar(
        id: profileEntity.id,
        name: profileEntity.name,
        city: profileEntity.city,
        //TODO SPECIES TO LIST
        species: speciesName[0].toUpperCase() + speciesName.substring(1));
  }

  List<ProfileModelIsar> mapList(List<ProfileEntity> profileEntity) {
    return profileEntity.map((e) => map(e)).toList();
  }
}
