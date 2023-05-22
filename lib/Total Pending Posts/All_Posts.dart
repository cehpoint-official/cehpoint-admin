// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'All_Post.dart';

//Job
// ignore: camel_case_types
class All_Posts extends StatelessWidget {
  const All_Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'All Posts',
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
              Navigator.pushNamed(context, 'Dashboard');
            },
          ),
          actions: [
            Center(
              child: Row(
                children: [
                  Text(
                    'Job',
                    style: TextStyle(
                        color: const Color(0xffD4C00B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  PopupMenuButton(
                    onSelected: (result) {
                      if (result == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => All_Posts()));
                      } else if (result == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => All_Post()));
                      }
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        value: 0,
                        child: Center(
                            child: Text(
                          'Job',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                        )),
                      ),
                      PopupMenuItem(
                          height: 1.h,
                          child: Divider(
                            height: 1.h,
                            thickness: 3,
                          )),
                      PopupMenuItem(
                        value: 1,
                        child: Center(
                            child: Text(
                          'Internship',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                        )),
                      ),
                    ],
                    icon: Image.asset('Assets/downarrowwithouttail.png'),
                  ),
                ],
              ),
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/allpost.png'),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company 2',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Web development',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Remote , Minimum 5000K/month',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 100.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffD4C00B),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'PostDetails');
                          },
                          child: Text('View details',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/allpost.png'),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company 2',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Web development',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Remote , Minimum 5000K/month',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 100.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffD4C00B),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'PostDetails');
                          },
                          child: Text('View details',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
