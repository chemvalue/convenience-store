import 'package:convenience_store_flutter_app/screens/stores_page.dart';
import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:convenience_store_flutter_app/widgets/aunth_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tao cua hang'),
        centerTitle: true,
        leadingWidth: 45.w,
        leading: Container(
          margin: EdgeInsets.only(left: 15.w),
          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 1.sh -
                      ScreenUtil().statusBarHeight -
                      ScreenUtil().bottomBarHeight -
                      AppBar().preferredSize.height -
                      70.h,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        // width: 200.r,
                        // height: 200.r,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/store.png'),
                            Positioned(
                                right: -20.w,
                                bottom: -20.w,
                                child: Image.asset('assets/images/add_image.png'))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                          width: double.infinity, child: Text('Ten cua hang', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),)),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Nhap ten cua hang',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.sp, color: HexColor('#EAEAF0'),  ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.sp, color: HexColor('#EAEAF0'),  ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 70.h,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                        spreadRadius: 1)
                  ]),
                  padding: EdgeInsets.all(10.h),
                  child: AuthButton(
                    color: '#65C962',
                    label: 'Tao moi cua hang',
                    icon: '',
                    function: () {
                      Navigator.pop(context, true);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
