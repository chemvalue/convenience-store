import 'package:convenience_store_flutter_app/screens/login_page.dart';
import 'package:convenience_store_flutter_app/widgets/aunth_button.dart';
import 'package:convenience_store_flutter_app/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            height: 1.sh - ScreenUtil().statusBarHeight - ScreenUtil().bottomBarHeight,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 150.h,
                  child: Text(
                    'Đăng Ký',
                    style: TextStyle(
                        fontSize: 40.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                TextInput(label: 'Họ và tên', preIcon: Icon(Icons.person_outline), sufIcon: false,),
                SizedBox(
                  height: 20.h,
                ),
                TextInput(label: 'Email', preIcon: Icon(Icons.email_outlined), sufIcon: false,),
                SizedBox(
                  height: 20.h,
                ),
                TextInput(label: 'Mật khẩu', preIcon: Icon(Icons.lock_outline), sufIcon: true,),
                SizedBox(
                  height: 20.h,
                ),
                TextInput(label: 'Nhập lại mật khẩu', preIcon: Icon(Icons.lock_outline), sufIcon: true,),
                SizedBox(
                  height: 40.h,
                ),
                AuthButton(color: '#65C962', icon: '', label: 'Đăng ký', function: (){},),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bạn đã có tài khoản'),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text('Đăng nhập ngay'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
