import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumProjectsdetails extends StatelessWidget {
  const PremiumProjectsdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Premium Projects details',
          style: TextStyle(color: Colors.black87, fontSize: 18.sp),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'Premium_Projects');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 30.w, top: 16.h, right: 30.w, bottom: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Client 1',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project Name',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Project budget',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Project deadline',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Project details',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 115.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coursera project',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        '40,000',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        '10 January',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        'App Devolopment',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company name',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Representative name ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Domain name',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Phone number',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Xyz company',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'abcd mondal',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'xyz.com',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        '+91 2345667767',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 250.h,
            ),
            SizedBox(
                height: 57.h,
                width: 400.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Approve',
                      style: TextStyle(
                          color: const Color(
                            0xffFFFFFF,
                          ),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    )),
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.r)),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16.w, right: 16.w, top: 24.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 175.h,
                                        width: double.infinity,
                                        color: const Color(0xffD4C00B)
                                            .withOpacity(0.25),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 24.h, bottom: 16.h),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  'Assets/bttomsheet.png'),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                      'Assets/bottomsheet2.png'),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Text(
                                                    'Embedded Proposal.pdf',
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Text('Payment link:',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Text('https://paymentlink.com',
                                          style: TextStyle(
                                              color: const Color(0xff2A55C3),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500)),
                                    ]),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 55.h,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffFFFFFF),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context,
                                              'PremiumProjectsdetails');
                                        },
                                        child: Text('Update',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 55.h,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffD4C00B),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context,
                                              'PremiumProjectsdetails');
                                        },
                                        child: Text('Send',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
