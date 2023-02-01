// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addtask1 extends StatelessWidget {
  const Addtask1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text(
            'Add task',
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
            Navigator.pushNamed(context, 'AllEmployee');
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 14.h, right: 14.w, bottom: 14.h),
            child: SizedBox(
              height: 26.h,
              width: 75.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Alltask');
                },
                child: Text('All Task',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 48.h, right: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    '+Add a task',
                    style: TextStyle(
                        color: Color(
                          0xffFFFFFF,
                        ),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Employee 1',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 27.h,
                  width: 103.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Addtaskdetails');
                    },
                    child: Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 63.h,
            ),
            Container(
              height: 55.h,
              decoration:
                  const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ]),
              child: Padding(
                padding: EdgeInsets.only(top: 5.h, left: 15.w, right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/Task1.png'),
                        SizedBox(
                          width: 21.w,
                        ),
                        Text(
                          'Task 1',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              height: 55.h,
              decoration:
                  const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ]),
              child: Padding(
                padding: EdgeInsets.only(top: 5.h, left: 15.w, right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/Task2.png'),
                        SizedBox(
                          width: 21.w,
                        ),
                        Text(
                          'Task 2',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
