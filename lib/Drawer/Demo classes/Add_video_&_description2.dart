// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addvideo121 extends StatelessWidget {
  const Addvideo121({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Add video & description',
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
            Navigator.pushNamed(context, 'UploadDemoclasses');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 54.h, left: 21.w, right: 21.w, bottom: 39.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16.7.h,
                  color: const Color.fromRGBO(212, 192, 11, 0.11),
                  child: Center(child: Image.asset('Assets/updatedetails.png')),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Center(
                  child: Container(
                    height: 31.h,
                    width: 130.w,
                    color: const Color(0xffD4C00B),
                    child: Center(
                      child: Text(
                        'Select file',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Add  class title'),
                ),
              ],
            ),
            Container(
              height: 49.h,
              color: const Color(0xffD4C00B),
              child: Center(
                  child: Text(
                'Upload',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffffffff)),
              )),
            )
          ],
        ),
      ),
    );
  }
}
