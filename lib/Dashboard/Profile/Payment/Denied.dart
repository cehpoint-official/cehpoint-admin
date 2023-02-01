import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Denied extends StatelessWidget {
  const Denied({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Image.asset('Assets/total_employees.png'),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Employee 1',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                ),
              ]),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Denied1');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Image.asset('Assets/total_employees.png'),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Employee 2',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                ),
              ]),
              IconButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ],
      ),
    );
  }
}
