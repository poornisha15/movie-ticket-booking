import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Textwidget.dart';

class PasswordInput extends StatelessWidget {
   PasswordInput({
    Key? key,
    required this.icon, 
    required this.hint,  
    required this.inputAction,
    required this.Controller,
    required this.validator

  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  final Controller;
  final validator;

  final GlobalKey <FormState> _newkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[800]?.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30)),
        child: Form(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 ),
                child: Icon(icon,
                color: Colors.white,
                size: 30),
              ),
              hintStyle: BodyText,
            ),
            obscureText: true,
            style: BodyText,
            textInputAction: inputAction,
            controller: Controller,
            validator: validator,
          ),
        ),
      ),
    );
  }
}