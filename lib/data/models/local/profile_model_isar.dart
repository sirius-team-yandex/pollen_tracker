import 'package:isar/isar.dart';
part 'profile_model_isar.g.dart';

@collection
class ProfileModelIsar {
  Id id;
  String name;
  String city;
  String species;

  ProfileModelIsar({
    required this.id,
    required this.name,
    required this.city,
    required this.species,
  });
}
