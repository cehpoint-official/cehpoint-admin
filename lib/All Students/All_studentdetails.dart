import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class All_Studentdetails extends StatelessWidget {
  const All_Studentdetails({super.key, required this.studentDetails});

  String getYesNoValue(bool value) {
    return value ? 'Yes' : 'No';
  }

  final Map studentDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Student details',
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
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.h, bottom: 36.h, left: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            studentDetails['name'],
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image.asset('Assets/bigdot.png'),
                  Text(
                    'Are you interested in Cyber Future Course?',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('Assets/answer_arrow.png'),
                  Text(
                    '${getYesNoValue(studentDetails['courseInterested'])}',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('Assets/bigdot.png'),
                  Text(
                    'Do your parents support you?',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('Assets/answer_arrow.png'),
                  Text(
                    '${getYesNoValue(studentDetails['parentSupport'])}',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('Assets/bigdot.png'),
                  Text(
                    'Are you comfortable with online classes?',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('Assets/answer_arrow.png'),
                  Text(
                    '${getYesNoValue(studentDetails['onlineComfortable'])}',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name - " + studentDetails['name'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "guardianName - " + studentDetails['guardianName'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "phoneNumber - " + studentDetails['phoneNumber'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "email - " + studentDetails['email'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "address - " + studentDetails['address'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "interest - " + studentDetails['interest'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "goals - " + studentDetails['goals'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "source - " + studentDetails['source'],
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
