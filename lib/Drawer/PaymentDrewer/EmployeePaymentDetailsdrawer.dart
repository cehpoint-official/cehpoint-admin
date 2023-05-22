import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeePaymentDetailsdrawer extends StatelessWidget {
  const EmployeePaymentDetailsdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Employee Payment Details',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Payment details',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
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
            Padding(
              padding: EdgeInsets.only(left: 9.w, right: 9.w),
              child: Row(
                children: [
                  Container(
                      height: 55.h,
                      width: 196.5.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffC4C1C1),
                              offset: Offset(0.5, 4),
                              spreadRadius: 0,
                              blurRadius: 4,
                            )
                          ]),
                      child: Center(
                          child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffffffff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0.r),
                                bottomLeft: Radius.circular(10.0.r),
                              ),
                            )),
                        child: Center(
                          child: Text(
                            'Denied',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ))),
                  Container(
                      height: 55.h,
                      width: 196.5.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffD4C00B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0.r),
                                bottomRight: Radius.circular(10.0.r),
                              ),
                            )),
                        child: Center(
                          child: Text(
                            'Mark as Paid',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffffffff)),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
