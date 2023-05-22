import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payeddrawer1 extends StatelessWidget {
  const Payeddrawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Paid',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.sp,
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
            Navigator.pushNamed(context, 'paymentdrawer');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 55.h, bottom: 34.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Payment details',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 39.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 39.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let us know your expectation? (Amount)',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: const Color.fromRGBO(0, 0, 0, 0.36)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '7000',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Beneficiary name:',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: const Color(0xff888888)),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Abcd Mondal',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    'Account number:  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: const Color.fromRGBO(82, 82, 82, 0.7)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'SBIN00CARDS',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'IFSC Code:',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff525252)),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    'SBIN0001744',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Paytm number:',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff525252)),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '5647889965',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Phonepe number:',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff525252)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    '5647889965',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
