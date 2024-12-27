import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final TextEditingController mycontroller;
  final Widget prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboard = TextInputType.text;
  //final String label;

  const CustomTextForm({
    super.key,
    required this.hintText,
    required this.mycontroller,
    required this.prefixIcon,
    required this.validator,
    //required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: keyboard,
      controller: mycontroller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey[700],
        ),
        suffix: IconButton(
          onPressed: () {
            mycontroller.clear();
          },
          icon: const Icon(Icons.highlight_remove_outlined),
        ),
        //labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
