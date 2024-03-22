part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingProfileState;

  const factory ProfileState.noProfile() = NoProfileState;

  const factory ProfileState.registration() = ProfileStateRegistaration;

  const factory ProfileState.inProfile(ProfileEntity profile) = InProfileState;

  const factory ProfileState.error() = ErrorProfileState;
}
