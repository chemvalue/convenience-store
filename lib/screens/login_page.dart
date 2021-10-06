import 'package:convenience_store_flutter_app/screens/register__page.dart';
import 'package:convenience_store_flutter_app/screens/stores_page.dart';
import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:convenience_store_flutter_app/widgets/aunth_button.dart';
import 'package:convenience_store_flutter_app/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 1.sh,
          color: HexColor('#FAFAFA'),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Container(
              height: 1.sh -
                  ScreenUtil().statusBarHeight -
                  ScreenUtil().bottomBarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 150.h,
                    child: Text(
                      'Đăng Nhập',
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextInput(
                    label: 'Email',
                    preIcon: Icon(Icons.email_outlined),
                    sufIcon: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextInput(
                    label: 'Mật khẩu',
                    preIcon: Icon(Icons.lock_outline),
                    sufIcon: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 35.h,
                          child: TextButton(
                            child: Text('Quên mật khẩu'),
                            onPressed: () {},
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  AuthButton(
                    color: '#65C962',
                    icon: '',
                    label: 'Đăng nhập',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllStoresPage(),
                          ));
                    },
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'Hoặc đăng nhập bằng',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#7E7E7E')),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  AuthButton(
                    color: '#3C5A99',
                    icon: 'facebook',
                    label: ' Đăng nhập bằng Facebook',
                    function: () {},
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  AuthButton(
                    color: '#F93F2D',
                    icon: 'google',
                    label: 'Đăng nhập bằng Google',
                    function: () {},
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Chưa có tài khoản'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ));
                          },
                          child: Text('Đăng ký ngay'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
