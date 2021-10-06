import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            color: HexColor('#65C962'),
          ),
          Container(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.close_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: 360.w,
                height: 570.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: HexColor('#FAFAFA'),
                ),
              )),
          Positioned(
            top: 75.h,
              left: 135.w,
              child: Container(
            width: 90.w,
            height: 90.w,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          )),
          Positioned(
            top: 190.h,
              child: Container(
                width: 360.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Nguyen Van Nam', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('12', style: TextStyle(fontSize: 16.sp, color: HexColor('#65C962')),),
                        SizedBox(width: 5.w,),
                        Text('Cua hang', style: TextStyle(fontSize: 16.sp, color: HexColor('#7E7E7E')),)
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      width: 360.w,
                      height: 250.h,
                      margin: EdgeInsets.all(15.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                          boxShadow: [BoxShadow(color: HexColor('#8D8D8D14').withOpacity(0.1), offset: Offset(0, 5), blurRadius: 10, spreadRadius: 0.08)]
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: HexColor('#EAEAF0')))
                            ),
                            child: ListTile(
                              leading: Image.asset('assets/images/ic_store.png'),
                              title: Text('Danh sach cua hang'),
                              trailing: Image.asset('assets/images/ic_chevron-right.png'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(width: 1, color: HexColor('#EAEAF0')))
                            ),
                            child: ListTile(
                              leading: Image.asset('assets/images/ic_edit.png'),
                              title: Text('Chinh sua thong tin'),
                              trailing: Image.asset('assets/images/ic_chevron-right.png'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(width: 1, color: HexColor('#EAEAF0')))
                            ),
                            child: ListTile(
                              leading: Image.asset('assets/images/ic_lock.png'),
                              title: Text('Doi mat khau'),
                              trailing: Image.asset('assets/images/ic_chevron-right.png'),
                            ),
                          ),
                          Container(
                            child: ListTile(
                              leading: Image.asset('assets/images/ic_globe.png'),
                              title: Text('Thay doi ngon ngu'),
                              trailing: Image.asset('assets/images/ic_chevron-right.png'),
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      alignment: Alignment.center,
                      height: 50.h,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: HexColor('#8D8D8D14').withOpacity(0.1), offset: Offset(0, 5), blurRadius: 10, spreadRadius: 0.08)]
                      ),

                      child: Text('ĐĂNG XUẤT', style: TextStyle(color: HexColor('#FF0844'), fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}