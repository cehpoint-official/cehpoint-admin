// ignore: file_names
import 'package:cehpoint_admin/Premium%20Client%20waiting%20list/PremiumProjectsdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Premium_Projects extends StatelessWidget {
  const Premium_Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Text(
            'Premium Projects',
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
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.h,
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PremiumProjectsdetails()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(
                      'Assets/Client_waiting_list.png',
                    ),
                    SizedBox(
                      width: 20.h,
                    ),
                    Text(
                      'Client 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PremiumProjectsdetails()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(
                      'Assets/Client_waiting_list.png',
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Client 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PremiumProjectsdetails()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(
                      'Assets/Client_waiting_list.png',
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Client 3',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  ]),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
