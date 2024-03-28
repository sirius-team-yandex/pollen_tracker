import 'package:pollen_tracker/domain/models/profile_entity.dart';

abstract interface class ProfileSubject {
  Stream<ProfileEntity?> observeCurrent();
  Stream<List<ProfileEntity>> observeAll();
}
