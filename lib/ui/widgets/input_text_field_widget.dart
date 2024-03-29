import 'package:flutter/material.dart';

class InputTextFieldFilledWidget extends StatelessWidget {
  const InputTextFieldFilledWidget({super.key, required this.onInputed, required this.hint, this.minLines = 1});

  final Function(String) onInputed;
  final int minLines;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.send,
      minLines: 1,
      style: Theme.of(context).textTheme.displayMedium,
      // TODO: validator
      decoration: InputDecoration(
        hintText: hint,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(16.0),
      ),
      onFieldSubmitted: (String value) => onInputed(value),
    );
  }
}
