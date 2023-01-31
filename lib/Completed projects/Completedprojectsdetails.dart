// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Completedprojectsdetails extends StatelessWidget {
  Completedprojectsdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Completed projects details',
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
            Navigator.pushNamed(context, 'Completed_projects');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.h, left: 30.w, right: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project Name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'Project 1',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project budget',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '40,000',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project deadline',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '10 January',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project details',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'App Devolopment',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'Xyz company',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Representative name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'abcd mondal',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Domain name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'xyz.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone number',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '+91 2345667767',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'All reports',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Week 1 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: const Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Week 2 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: const Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Week 3 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: const Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Week 4 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: const Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Week 5 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: const Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 92.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
