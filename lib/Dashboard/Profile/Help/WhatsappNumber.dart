import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatsappNumber extends StatelessWidget {
  const WhatsappNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Whats app Number',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.sp,
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
            Navigator.pushNamed(context, 'Help');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 33.h, left: 20.w, right: 29.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Whats app Number',
            style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.6),
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 45.h,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0.r),
                  topRight: Radius.circular(10.0.r),
                  bottomRight: Radius.circular(10.0.r),
                  bottomLeft: Radius.circular(10.0.r),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 49.h,
                width: 137.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  color: Color(0xffD4C00B),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, 'Addgiftforclient');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0.r),
                              topRight: Radius.circular(10.0.r),
                              bottomRight: Radius.circular(10.0.r),
                              bottomLeft: Radius.circular(10.0.r)),
                        )),
                    child: Text(
                      'Update',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
