import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthButton extends StatelessWidget {
  final String color;
  final String icon;
  final String label;
  final Function()? function;

  const AuthButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.label,
       this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
              color: HexColor(color), borderRadius: BorderRadius.circular(8)),
          child: icon == ''
              ? Text(
                  label,
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: icon == 'facebook'
                      ? Row(
                          children: [
                            SvgPicture.asset('assets/icons/facebook.svg'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              label,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            SvgPicture.asset('assets/icons/google.svg'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              label,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ))),
      onTap: function,
    );
  }
}
