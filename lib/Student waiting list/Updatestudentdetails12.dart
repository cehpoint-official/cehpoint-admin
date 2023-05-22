import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Updatestudentdetails12 extends StatelessWidget {
  const Updatestudentdetails12(
      {super.key, required this.text, required this.pdffilename});
  final String text;
  final String pdffilename;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Update Student details',
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
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 54.h, left: 30.w, right: 30.w, bottom: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Embedded Course brochure',
                    style: TextStyle(
                        color: const Color.fromRGBO(0, 0, 0, 0.3),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 200.h,
                  width: 500.w,
                  color: const Color(0xffFAF8E4),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15.h, left: 15.h, right: 15.h, bottom: 25.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Image.asset('Assets/pencil.png')],
                        ),
                        Center(child: Image.asset('Assets/bttomsheet.png')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('Assets/bottomsheet2.png'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              pdffilename,
                              // pdffilename,
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Payment link:',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(text,
                        style: TextStyle(
                            color: const Color(0xff2A55C3),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 57.h,
              width: 450.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: const Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  Navigator.pushNamed(context, 'Updateclientdetails');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
