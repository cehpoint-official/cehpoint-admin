import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Profile',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.sp,
            ),
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
            Navigator.pushNamed(context, 'Profile');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 36.h, left: 35.w, right: 35.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
                width: 183.w,
                height: 183.h,
                decoration: const BoxDecoration(
                    color: Color(0xffD4C00B), shape: BoxShape.circle),
                child: Image.asset(
                  'Assets/bigprofile.png',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Image.asset('Assets/Student_waiting_list.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Name'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jit',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 246.w,
                      ),
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30.r)),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Text(
                                        'Enter ypur name',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.sp,
                                        ),
                                      )
                                    ]);
                              },
                            );
                          },
                          child: Image.asset('Assets/pencil.png'))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('''This is not your username or pin. this name 
 will be visible to your contacts''')
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
