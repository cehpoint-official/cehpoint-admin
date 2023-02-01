import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class All_Task extends StatelessWidget {
  const All_Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text(
            'All Task',
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
            Navigator.pushNamed(context, 'Addtask1');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 53.h, left: 12.w, right: 14.w),
        child: Column(
          children: [
            SizedBox(
              height: 61.h,
              width: 385.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: const Color(0xffD4C00B),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Addtask12');
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 12.w, right: 13.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Title',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text(
                        '01.02.2023',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 61.h,
              width: 385.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: const Color(0xffD4C00B),
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, 'Alltask');
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 12.w, right: 13.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Title',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text(
                        '03.07.2022',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
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
