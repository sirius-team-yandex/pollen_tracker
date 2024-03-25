import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';

part 'profile_bloc.freezed.dart';
part 'profile_events.dart';
part 'profile_states.dart';

extension ProfileBuilder on BuildContext {
  ProfileState? get profileState => BlocProvider.of<ProfileBloc>(this).state;
  ProfileBloc? get profileBloc => BlocProvider.of<ProfileBloc>(this);
}

@injectable
class ProfileBloc extends Bloc<ProfilesAllEvent, ProfileState> {
  final ProfileSubject profileSubject;
  final ProfileRepository profileRepository;
  final ConfigRepository configRepository;

  late StreamSubscription profileSubscription;

  ProfileBloc({
    required this.profileSubject,
    required this.profileRepository,
    required this.configRepository,
  }) : super(const ProfileState.logedOut()) {
    profileSubscription = profileSubject.observeCurrent().listen((profile) {
      if (profile != null) {
        add(
          ProfilesAllEvent.logIn(profile),
        );
        logger.i('Call logInEvent on ProfileBloc from stream');
      } else {
        add(
          const ProfilesAllEvent.logOut(),
        );
        logger.i('Cant load profile from stream');
        //_error(Exception('Cant load profile from stream'));
      }
    })
      ..onError((e) {
        _error(e, 'Error on loading profile from stream');
      });

    on<_LogOut>(_profileLogOut);
    on<_LogIn>(_profileLogIn);
    on<_ChangeProfile>(_changeProfile);
  }

  void logIN(ProfileEntity profile) {
    add(ProfilesAllEvent.logIn(profile));
  }

  void logOut() {
    add(const ProfilesAllEvent.logOut());
  }

  void changeProfile(ProfileEntity newProfile) {
    add(ProfilesAllEvent.changeProfile(newProfile));
  }

  Future<void> _profileLogIn(_LogIn event, Emitter<ProfileState> emit) async {
    try {
      emit(ProfileState.logedIn(event.profile));
      logger.i('Emit ProfileStateLogedIn from ProfileBloc');
    } catch (e) {
      _error(e, 'Error on logging in from ProfileBloc', emit);
    }
  }

  Future<void> _profileLogOut(_LogOut event, Emitter<ProfileState> emit) async {
    try {
      final ConfigEntity config = await configRepository.get();
      configRepository.set(
        config.copyWith(currProfileId: null),
      );
      logger.i('[LOGOUT] Set Config.currProfileId to null from ProfileBloc');
    } catch (e) {
      _error(e, 'Error on logOut from ProfileBloc', emit);
    }
  }

  Future<void> _changeProfile(_ChangeProfile event, Emitter<ProfileState> emit) async {
    try {
      await profileRepository.insert(event.newProfile);
      logger.i('Update profile from ProfileBloc');
    } catch (e) {
      _error(e, 'Error on changing profile from ProfileBloc', emit);
    }
  }

  Future<void> _error(
    Object error, [
    String message = 'Error',
    Emitter<ProfileState>? emit,
  ]) async {
    logger.e('$message: $error');
    emit?.call(const ProfileState.error());
  }
}
