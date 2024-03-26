part of 'profile_bloc.dart'

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.logedOut() = _LogedOutProfileState;

  const factory ProfileState.logedIn(ProfileEntity profile) = _LogedInProfileState;

  const factory ProfileState.error() = _ErrorProfileState;
}
