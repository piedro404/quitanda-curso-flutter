import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isObscureText;

  const CustomTextField({Key? key, required this.icon, required this.label, this.isObscureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            labelText: label,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: Colors.green, width: 2.0))),
      ),
    );
  }
}
