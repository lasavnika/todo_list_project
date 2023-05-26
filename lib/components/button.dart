import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  VoidCallback onPressed;
  AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child: const Padding(
        padding: EdgeInsets.all(13),
        child: Text(
          "Добавить",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}