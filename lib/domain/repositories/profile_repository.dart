import 'package:pollen_tracker/domain/models/profile_entity.dart';

abstract interface class ProfileRepository {
  Future<bool> insert(ProfileEntity profile);
  Future<ProfileEntity?> get(int id);
  // Think twice before using this method!!
  // Are you sure you want get current profile and not subscribe to it?
  // Always consider ProfileSubject first!
  Future<ProfileEntity?> getCurrent();
  Future<bool> delete(int id);
}
