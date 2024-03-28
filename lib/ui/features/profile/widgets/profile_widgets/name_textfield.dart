import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class NameTextField extends StatefulWidget {
  final ProfileEntity profile;
  const NameTextField({super.key, required this.profile});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = widget.profile.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        controller: _controller,
        onFieldSubmitted: (value) {
          if (value.trim() != '') {
            context.profileBloc?.changeProfile(
              // TODO: not mock
              widget.profile.copyWith(
                name: value,
              ),
            );
            logger.i(value);
          } else {
            _controller.text = widget.profile.name;
          }
        },
        style: context.T.displayLarge,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter User Name',
          prefixIcon: Icon(null),
          suffixIcon: Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }
}
