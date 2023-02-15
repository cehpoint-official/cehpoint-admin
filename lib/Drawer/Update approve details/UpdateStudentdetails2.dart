// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateStudentdetails2 extends StatelessWidget {
  const UpdateStudentdetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Update Student details',
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
        padding:
            EdgeInsets.only(top: 60.h, left: 30.w, right: 30.w, bottom: 50.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Embedded Course brochure',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 250.h,
            width: 500.w,
            color: const Color(0xffFAF8E4),
            child: Padding(
              padding: EdgeInsets.only(top: 52.h, bottom: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('Assets/bttomsheet.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/bottomsheet2.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Embedded Course brochure.pdf',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Payment link:',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'https://paymentlink.com',
                style: TextStyle(
                    color: Color(0xff2A55C3),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          Container(
              margin: EdgeInsets.only(
                top: 195.h,
              ),
              height: 57.h,
              width: 450.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffbacD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: const Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  Navigator.pushNamed(context, 'UpdateStudentdetails22');
                },
              ))
        ]),
      ),
    );
  }
}
