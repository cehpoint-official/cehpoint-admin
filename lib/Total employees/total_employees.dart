import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class total_employees extends StatefulWidget {
  @override
  State<total_employees> createState() => _total_employeesState();
}

class _total_employeesState extends State<total_employees> {
  Color _color = Colors.transparent;
  // Color _color1 = Colors.transparent;
  // Color _color2 = Colors.transparent;
  // Color _color3 = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'All Employees',
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
        actions: [
          InkWell(
            child: Image.asset('Assets/totalemployees.png'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Delete Employee',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffE43131)),
                      ),
                      content: Text(
                        """Are you sure you want to delete
“Employee 1 “""",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff000000)),
                      ),
                      actions: [
                        SizedBox(
                          height: 47.h,
                          width: 139.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF92222),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0.r),
                                    bottomRight: Radius.circular(10.0.r),
                                    bottomLeft: Radius.circular(10.0.r),
                                    topLeft: Radius.circular(10.0.r),
                                  ),
                                )),
                            onPressed: () {
                              Navigator.pushNamed(context, 'total_employees');
                            },
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 47.h,
                          width: 139.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2A55C3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0.r),
                                    bottomRight: Radius.circular(10.0.r),
                                    bottomLeft: Radius.circular(10.0.r),
                                    topLeft: Radius.circular(10.0.r),
                                  ),
                                )),
                            onPressed: () {
                              Navigator.pushNamed(context, 'total_employees');
                            },
                            child: Text(
                              'CANCEL',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _color = const Color.fromRGBO(212, 192, 11, 0.16);
                });
              },
              child: Container(
                color: _color,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/total_employees.png'),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            'Employee 1',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 43.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NAME : Suraj Mitra',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Ph No. : +91 6296704833',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'EMAIL ID : suraj@gmail.com',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _color = const Color.fromRGBO(212, 192, 11, 0.16);
                });
              },
              child: Container(
                color: _color,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/total_employees.png'),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            'Employee 2',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 43.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NAME : Suraj Mitra',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Ph No. : +91 6296704833',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'EMAIL ID : suraj@gmail.com',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _color = const Color.fromRGBO(212, 192, 11, 0.16);
                });
              },
              child: Container(
                color: _color,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/total_employees.png'),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            'Employee 3',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 43.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NAME : Suraj Mitra',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Ph No. : +91 6296704833',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'EMAIL ID : suraj@gmail.com',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 30.h,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _color = const Color.fromRGBO(212, 192, 11, 0.16);
                });
              },
              child: Container(
                color: _color,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/total_employees.png'),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            'Employee 3',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 43.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NAME : Suraj Mitra',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Ph No. : +91 6296704833',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'EMAIL ID : suraj@gmail.com',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
