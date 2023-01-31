// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Updateapprovedetails extends StatelessWidget {
  const Updateapprovedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Update approve details',
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
            Navigator.pushNamed(context, 'JobApplicantsDetails');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 75.h, left: 30.w, right: 30.w, bottom: 50.h),
        child: Column(
          children: [
            Center(
              child: Text(
                'Job approve details',
                style: TextStyle(
                    color: const Color(
                      0xffD4C00B,
                    ),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextField(
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2030));
              },
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Add date',
                  suffixIcon: Image.asset('Assets/calender.png')),
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add time',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add meeting link'),
            ),
            SizedBox(
              height: 310.h,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 55.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, 'Updateapprovedetails');
                      },
                      child: Text('Approve',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
