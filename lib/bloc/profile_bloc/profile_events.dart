part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.load({int? id}) = LoadProfile;
  const factory ProfileEvent.select({int? id}) = SelectProfile;
  const factory ProfileEvent.endRegistration(ProfileEntity profile) =
      EndRegistration;
  const factory ProfileEvent.logOut() = LogOut;
  //additional
  const factory ProfileEvent.changeProfile(ProfileEntity newProfile) =
      ChangeProfile;
  const factory ProfileEvent.deleteProfile({required int id}) = DeleteProfile;
}
