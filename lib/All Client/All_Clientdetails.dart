import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class All_Clientdetails extends StatelessWidget {
  const All_Clientdetails({super.key, required this.allclientDetails});

  final Map allclientDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Client details',
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
        padding: EdgeInsets.only(left: 30.w, top: 16.h, right: 30.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            allclientDetails['representativeName'].toString(),
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
          ),
          SizedBox(
            height: 36.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Name',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Project budget',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Project deadline',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Project details',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 115.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allclientDetails['projectName'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    allclientDetails['budget'].toString(),
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    allclientDetails['deadline'].toString(),
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    allclientDetails['requirement'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company name',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Representative name ',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Domain name',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allclientDetails['companyName'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    allclientDetails['representativeName'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    allclientDetails['requirement'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    allclientDetails['email'].toString(),
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    allclientDetails['phoneNumber'].toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
