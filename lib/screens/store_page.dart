import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/ic_back_arrow.png'),
          color: Colors.blue,
          onPressed: () {},
        ),
        leadingWidth: 50.w,
        titleSpacing: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/ic_menu.png'),
            onPressed: () {},
          )
        ],
        title: Container(
          height: AppBar().preferredSize.height,
          alignment: Alignment.center,
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.png'),),
              SizedBox(width: 10.w,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cua hang ban hoa qua Cau Giay', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis,),
                    Row(
                      children: [
                        Text('12.7834', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: HexColor('#65C962')), overflow: TextOverflow.ellipsis,),
                        SizedBox(width: 10.w,),
                        Text('San pham', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: HexColor('#7E7E7E')), overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
