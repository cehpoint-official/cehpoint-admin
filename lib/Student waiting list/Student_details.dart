// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bottomsheetbar.dart';

// ignore: camel_case_types
class Student_details extends StatelessWidget {
  const Student_details({super.key, required this.studentDetails});
  String getYesNoValue(bool value) {
    return value ? 'Yes' : 'No';
  }

  final Map studentDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Student details',
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
            Navigator.pushNamed(context, 'Studentwaitinglist');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 36.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Are you interested in Cyber Future Course?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['courseInterested'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Do your parents support you?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['parentSupport'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Are you comfortable with online classes?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['onlineComfortable'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name - " + studentDetails['name'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "guardianName - " + studentDetails['guardianName'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "phoneNumber - " + studentDetails['phoneNumber'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "email - " + studentDetails['email'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "address - " + studentDetails['address'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "interest - " + studentDetails['interest'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "goals - " + studentDetails['goals'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "source - " + studentDetails['source'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]),
            ),
            Center(
              child: SizedBox(
                height: 47.h,
                width: 334.w,
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
                        return bottomsheetbar(
                          txt: 'www.youtube.com',
                          pdfname: 'Embedded Course brochure.pdf',
                          oldpdf: 'Embedded Course brochure.pdf',
                          id: studentDetails['id'],
                          pdfpath: '',
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
