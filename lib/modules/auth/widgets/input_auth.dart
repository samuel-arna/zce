import 'package:flutter/material.dart';
import 'package:tas/core/utils/colors/original_colors.dart';

class InputAuth extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function onChange;
  final bool pass;
  final String value;

  const InputAuth(
      {super.key,
      required this.controller,
      required this.label,
      required this.onChange,
      required this.pass,
      required this.value});

  @override
  State<InputAuth> createState() => _InputAuthState();
}

class _InputAuthState extends State<InputAuth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 350,
      decoration: BoxDecoration(
        color: OriginalColors.secoundary.withOpacity(0.49),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextField(
        obscureText: widget.pass ? true : false,
        onChanged: (txt) => widget.onChange(txt),
        controller: widget.controller,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 15, bottom: 3),
          hintText: widget.label,
          fillColor: Colors.white,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
