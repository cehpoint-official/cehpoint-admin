// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyJob extends StatelessWidget {
  const MyJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(
          top: 36.h,
        ),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('Assets/MyJoblogo.png'),
              SizedBox(
                width: 31.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company 2',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Web development',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    'Remote - Full time  - Minimum 5 LPA',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 110.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'PostDetails0');
                      },
                      child: Text(
                        'View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 29.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('Assets/MyJoblogo.png'),
              SizedBox(
                width: 31.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company 2',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Web development',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    'Remote - Full time  - Minimum 5 LPA',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 110.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'PostDetails0');
                      },
                      child: Text(
                        'View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
