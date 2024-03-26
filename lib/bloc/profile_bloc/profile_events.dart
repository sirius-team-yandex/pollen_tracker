part of 'profile_bloc.dart';

@freezed
abstract class ProfilesAllEvent with _$ProfilesAllEvent {
  const factory ProfilesAllEvent.logIn(ProfileEntity profile) = _LogIn;
  const factory ProfilesAllEvent.logOut() = _LogOut;
  const factory ProfilesAllEvent.changeProfile(ProfileEntity newProfile) = _ChangeProfile;
}
