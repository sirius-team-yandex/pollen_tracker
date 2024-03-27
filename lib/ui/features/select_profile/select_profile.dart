import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/bloc/profiles_all_bloc/profiles_all_bloc.dart';
import 'package:pollen_tracker/injectable_init.dart';

class SelectProfileWrapper extends StatelessWidget {
  const SelectProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfilesAllBloc>(),
      child: const _SelectProfile(),
    );
  }
}

class _SelectProfile extends StatelessWidget {
  const _SelectProfile();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilesAllBloc, ProfilesAllState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('state $state'),
              TextButton(
                onPressed: () => context.goNamed('example', extra: context.read<ProfilesAllBloc>()),
                child: const Text('example'),
              ),
            ],
          ),
        );
      },
    );
  }
}
