

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget{
  final String hinttext;
  final TextEditingController mycontroller;
  final bool obsure;
  // final String? Function(String?) validator;
  const TextFieldLogin({super.key, required this.hinttext, required this.mycontroller, required this.obsure,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          )
      ),
      obscureText: obsure,
    );
  }
}