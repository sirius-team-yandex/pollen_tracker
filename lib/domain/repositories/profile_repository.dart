import 'package:pollen_tracker/domain/models/profile_entity.dart';

abstract class ProfileRepository {
  Future<List<ProfileEntity>> fetchAllProfileModels();
  Future<ProfileEntity?> fetchProfileModelById(int id);
  Future<bool> addNewProfileModel(ProfileEntity profile);
  Future<bool> updateProfileModelInfo(ProfileEntity profile);
  Future<bool> deleteProfileModel(int id);
}