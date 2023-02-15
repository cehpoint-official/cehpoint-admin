// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class UpdateStudentdetails22 extends StatelessWidget {
  const UpdateStudentdetails22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Update Student details',
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
            Navigator.pushNamed(context, 'UpdateStudentdetails2');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 60.h, left: 30.w, right: 30.w, bottom: 50.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Embedded Course brochure',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 250.h,
            width: 500.w,
            color: const Color(0xffFAF8E4),
            child: Center(
              child: Image.asset(
                "Assets/updatedetails.png",
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Payment link:',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          SizedBox(
            height: 10.h,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'add payment link',
            ),
          ),
          SizedBox(
            height: 47.h,
          ),
          Container(
              margin: EdgeInsets.only(
                top: 165.h,
              ),
              height: 57.h,
              width: 450.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: const Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.success,
                    text: 'Form Submitted Successfully!',
                  );
                },
              ))
        ]),
      ),
    );
  }
}
