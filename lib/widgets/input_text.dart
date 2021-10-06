import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  final String label;
  final Icon preIcon;
  final bool sufIcon;

  const TextInput({Key? key, required this.label, required this.preIcon, required this.sufIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      borderRadius: BorderRadius.circular(8),
      shadowColor: HexColor('#8D8D8D14').withOpacity(0.1),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: preIcon,
            labelText: label,
            labelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: HexColor('#292929')),
            suffixIcon: sufIcon ? Icon(Icons.remove_red_eye_outlined) : null,
            fillColor: HexColor('#FFFFFF'),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(width: 0, style: BorderStyle.none))),
      ),
    );
  }
}
