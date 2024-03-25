part of 'profiles_all_bloc.dart';

@freezed
abstract class ProfilesAllEvent with _$ProfilesAllEvent {
  const factory ProfilesAllEvent.load(List<ProfileEntity> profiles) = _LoadProfiles;
  const factory ProfilesAllEvent.select(int id) = _SelectProfile;
  const factory ProfilesAllEvent.add(ProfileEntity profile) = _AddProfile;
  const factory ProfilesAllEvent.delete(int id) = _DeleteProfile;
}
