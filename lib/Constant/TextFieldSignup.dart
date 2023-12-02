import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFielddata extends StatelessWidget{
  final TextEditingController mycontroller;
  final String labeltext ;
  final TextStyle formtextstyle;
  final bool obsure;
  const TextFielddata({super.key, required this.mycontroller, required this.labeltext, required this.formtextstyle, required this.obsure});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color:Color(0xff1d8ea5))
          ),
          suffixIcon: const Icon(Icons.check,color: Colors.grey,),
          label: Text(labeltext,style: formtextstyle ,),
      ),
      obscureText: obsure,
    );
  }
}