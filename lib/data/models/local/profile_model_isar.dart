import 'package:isar/isar.dart';
part 'profile_model_isar.g.dart';

@collection
class ProfileModelIsar {
  Id profileId;
  int cityId;
  String name;
  List<String> species;

  ProfileModelIsar({
    required this.profileId,
    required this.cityId,
    required this.name,
    required this.species,
  });
}
