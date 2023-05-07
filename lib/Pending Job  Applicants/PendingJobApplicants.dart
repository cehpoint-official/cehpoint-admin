// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Pending_Job_Applicants extends StatelessWidget {
  const Pending_Job_Applicants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Job Applicants',
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
        padding: EdgeInsets.only(top: 50.h, left: 30.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Image.asset(
              'Assets/PendingJobApplicants.png',
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Bijoy Basu',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
          ]),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Applied for Company 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Web development',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Apply on 02/01/2023',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 25.h,
                      width: 121.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffD4C00B),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'JobApplicantsDetails');
                        },
                        child: Text('Update',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(children: [
            Image.asset(
              'Assets/PendingJobApplicants.png',
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Agni Mitro',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
          ]),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Applied for Company 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Web development',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Apply on 02/01/2023',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 25.h,
                      width: 121.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffD4C00B),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'JobApplicantsDetails');
                        },
                        child: Text('Update',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
