// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'EmployeePaymentDetailsdrawer.dart';

class Pendingdrawer extends StatelessWidget {
  const Pendingdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeePaymentDetailsdrawer(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Employee 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  Image.asset('Assets/payment1.png')
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeePaymentDetailsdrawer(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Employee 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  Image.asset('Assets/payment1.png')
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeePaymentDetailsdrawer(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Employee 3',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  Image.asset('Assets/payment1.png')
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeePaymentDetailsdrawer(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Employee 4',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  Image.asset('Assets/payment1.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
