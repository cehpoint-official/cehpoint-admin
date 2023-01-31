// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Approve_details extends StatelessWidget {
  const Approve_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Added date',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    '15.01.23',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    'Added time',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    '8 PM',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Added meeting link',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    'https://meet.google.com/fhn-romm-fgf',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff2A55C3)),
                  ),
                ],
              ),
              Container(
                width: 400.w,
                color: Color(0xffD4C00B),
                height: 49,
                child: Center(
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: const Color(0xffffffff)),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
