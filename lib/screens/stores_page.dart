import 'package:convenience_store_flutter_app/screens/add_new_store.dart';
import 'package:convenience_store_flutter_app/screens/store_page.dart';
import 'package:convenience_store_flutter_app/screens/user_info.dart';
import 'package:convenience_store_flutter_app/utilities/hexcolor.dart';
import 'package:convenience_store_flutter_app/widgets/aunth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AllStoresPage extends StatefulWidget {
  @override
  _AllStoresPageState createState() => _AllStoresPageState();
}

class _AllStoresPageState extends State<AllStoresPage> {
  bool hasData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chon cua hang'),
        leadingWidth: 45.w,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserPage(),
                ));
          },
          child: Container(
            margin: EdgeInsets.only(left: 15.w),
            child: FittedBox(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                hasData ? dataList() : emptyList,
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
                    label: hasData ? 'Them cua hang' : 'Tao cua hang',
                    icon: '',
                    function: () async {
                      var data = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewStore(),
                          ));
                      setState(() {
                        hasData = data;
                      });
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

Widget emptyList = Container(
  height: 1.sh -
      ScreenUtil().statusBarHeight -
      ScreenUtil().bottomBarHeight -
      AppBar().preferredSize.height -
      70.h,
  color: HexColor('#FAFAFA'),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset('assets/images/empty_list.svg'),
      SizedBox(
        height: 20.h,
      ),
      Text(
        'Chua co cua hang nao \n vui long tao cua hang',
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
      )
    ],
  ),
);

Widget dataList() {
  return Container(
      height: 1.sh -
          ScreenUtil().statusBarHeight -
          ScreenUtil().bottomBarHeight -
          AppBar().preferredSize.height -
          70.h,
      color: HexColor('#FAFAFA'),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15.w,
            ),
            TextField(
              style: TextStyle(fontSize: 18.sp),
              decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/images/search.png'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.w),
                  hintText: 'Nhap ten hoac ma san pham',
                  hintStyle: TextStyle(color: HexColor('#7E7E7E'))),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10.w),
                  margin: EdgeInsets.only(top: 15.w),
                  child: Slidable(
                    actionPane: SlidableBehindActionPane(),
                    actionExtentRatio: 0.15,
                    secondaryActions: [
                      Container(
                          color: Colors.grey.withOpacity(0.2),
                          padding: EdgeInsets.only(right: 1.w),
                          child: IconSlideAction(
                              iconWidget: Image.asset('assets/icons/edit.png'),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => StorePage(),
                                    ));
                              },
                              color: Colors.white)),
                      IconSlideAction(
                        iconWidget: Image.asset('assets/icons/trash.png'),
                      )
                    ],
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/orange.jpg'),
                                fit: BoxFit.cover,
                              )),
                          height: 80.w,
                          width: 80.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 80.w,
                            margin: EdgeInsets.symmetric(
                              horizontal: 15.w,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cua hang ban hoa qua Cau Giay',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '12.7834',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: HexColor('#65C962')),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text('San pham',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: HexColor('#7E7E7E').withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ));
}
