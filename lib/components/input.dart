import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.label,
    this.placeholder,
  }) : super(key: key);

  final String label;
  final String? placeholder;
  get validator => null;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        hintText: placeholder,
      ),
      validator: validator,
    );
  }
}
