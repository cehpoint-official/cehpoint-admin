import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Updatedetails extends StatelessWidget {
  const Updatedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Update details',
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
            Navigator.pushNamed(context, 'Manage_Internship');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100.h, left: 34.w, right: 32.w),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add date',
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Image.asset('Assets/addtime.png'),
                border: OutlineInputBorder(),
                hintText: 'Add time',
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Image.asset('Assets/calender.png'),
                border: OutlineInputBorder(),
                hintText: 'Add meeting link',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
