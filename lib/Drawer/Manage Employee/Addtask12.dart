import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addtask12 extends StatelessWidget {
  const Addtask12({super.key});

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
            Navigator.pushNamed(context, 'Alltask');
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 52.h, left: 17.w, right: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 55.h,
              width: 369.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, 'Addtask12');
                  },
                  child: Text(
                    '+Add a task',
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Employee 1',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 103.w,
                  height: 27.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, 'Addtask12');
                      },
                      child: Text(
                        'View details',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000)),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Column(
              children: [
                for (int i = 1; i < 11; i++)
                  Container(
                    margin: const EdgeInsets.only(
                      top: 3,
                    ),
                    decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ]),
                    height: 51.h,
                    width: 334.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffffffff),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('Assets/Task1.png'),
                              SizedBox(
                                width: 21.w,
                              ),
                              Text(
                                'TASK -',
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                i.toString(),
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Image.asset('Assets/arrow_drop_down.png'),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: 65.h,
                ),
                SizedBox(
                  width: 250.w,
                  height: 50.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Mark as completed',
                      style: TextStyle(
                          color: const Color(
                            0xffFFFFFF,
                          ),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                SizedBox(
                  height: 46.h,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
