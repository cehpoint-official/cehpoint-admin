// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateClassdetails extends StatelessWidget {
  const UpdateClassdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar( centerTitle: true,
        title: Text(
          'Update Class details',
          style: TextStyle(color: Colors.black87, fontSize: 18.sp),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'UpdateClassdetails2');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 30.h, left: 30.w, right: 30.w, bottom: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Add syllabus',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color.fromRGBO(0, 0, 0, 0.3)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200.h,
                width: 500.w,
                color: const Color(0xffFAF8E4),
                child: Center(
                  child: Image.asset(
                    "Assets/updatedetails.png",
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add class title',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add class link',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Assignment link',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ]),
            SizedBox(
                height: 57.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    child: Center(
                        child: Text(
                      'SAVE',
                      style: TextStyle(
                          color: const Color(
                            0xffFFFFFF,
                          ),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    )),
                    onPressed: () {
                      // Navigator.pushNamed(context, 'UpdateClassdetails2');
                    }))
          ],
        ),
      ),
    );
  }
}
