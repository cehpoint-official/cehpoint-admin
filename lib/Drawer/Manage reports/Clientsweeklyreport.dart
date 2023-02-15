// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Clientsweeklyreport extends StatelessWidget {
  const Clientsweeklyreport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Clients weekly report',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 90.h, left: 10.w),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'My Food Box Project',
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                ),
                SizedBox(
                  width: 77.w,
                ),
                SizedBox(
                  height: 25.h,
                  width: 110.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Addreport');
                    },
                    child: Text(
                      'Add report',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Discord Project',
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                ),
                SizedBox(
                  width: 115.w,
                ),
                SizedBox(
                  height: 25.h,
                  width: 110.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Addreport');
                    },
                    child: Text('Add report',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Telegram Project',
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                ),
                SizedBox(
                  width: 100.w,
                ),
                SizedBox(
                  height: 25.h,
                  width: 110.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Addreport');
                    },
                    child: Text('Add report',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
