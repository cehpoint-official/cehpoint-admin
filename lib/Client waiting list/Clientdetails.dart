import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Client_details extends StatelessWidget {
  const Client_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Client details',
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
            Navigator.pushNamed(context, 'Clientwaitinglist');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 30.w, right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'abcd mondal',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Company Name',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'xyz company',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '7028361855',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Email ID',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'abcd@gmail.com',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Address',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Murshidabad',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Explain your Requirement',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'App development',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'What will be the project finishing deadline if we start working on your project next Monday ?',
              maxLines: 2,
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '30th February',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "What's your budget for this project ? (optional)",
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '30,000',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'How did you hear about us',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Google',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 155.h,
              ),
              height: 47.h,
              width: 334,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Image.asset('Assets/bttomsheet.png'),
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
                                                'Embedded Course brochure.pdf',
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
                                      backgroundColor: const Color(0xffFFFFFF),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'Student_details');
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
                                      backgroundColor: const Color(0xffD4C00B),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'Student_details');
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
