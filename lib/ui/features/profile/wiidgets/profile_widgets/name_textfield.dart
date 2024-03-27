import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class NameTextField extends StatefulWidget {
  final String name;
  const NameTextField({super.key, required this.name});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (value) => {
          if (value.trim() != '')
            {
              //TODO добавить ивент на смену имени
              logger.i(value),
            }
          else
            {
              controller.text = widget.name,
            },
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
