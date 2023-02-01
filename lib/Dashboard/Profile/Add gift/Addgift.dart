import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addgift extends StatelessWidget {
  const Addgift({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Add gift',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.sp,
            ),
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
            Navigator.pushNamed(context, 'Profile');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 33.h, left: 17.w, right: 17.w),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gift for student',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            height: 123.h,
            width: 377.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: Color(0xffD4C00B),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffC4C1C1),
                    offset: Offset(0.5, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                  )
                ]),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Addgiftforstudent');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0.r),
                        topRight: Radius.circular(10.0.r),
                        bottomRight: Radius.circular(10.0.r),
                        bottomLeft: Radius.circular(10.0.r)),
                  )),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 9.h,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gift title',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffffffff)),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '1 month  tryhackme premium',
                          style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text(
                          'Gift details',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffffffff)),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Azxc3455',
                          style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gift for client',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            height: 153.h,
            width: 377.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: Color(0xffD4C00B),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffC4C1C1),
                    offset: Offset(0.5, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                  )
                ]),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Addgiftforclient');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0.r),
                        topRight: Radius.circular(10.0.r),
                        bottomRight: Radius.circular(10.0.r),
                        bottomLeft: Radius.circular(10.0.r)),
                  )),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gift title',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffffffff)),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '6 month free cloud',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Gift details',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffffff)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'https://cloudinfo.in',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2A55C3)),
                        ),
                      ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
