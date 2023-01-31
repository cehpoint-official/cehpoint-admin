import 'package:cehpoint_admin/Drawer/Manage%20posts/TabBar/Job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Internship.dart';

// ignore: camel_case_types
class Other_posts extends StatelessWidget {
  const Other_posts({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 42.w, right: 42.w, top: 16.h),
          child: Column(children: [
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(19)),
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(
                    0xffD4C00B,
                  ),
                  borderRadius: BorderRadius.circular(19.r),
                ),
                labelColor: const Color(0xffffffff),
                unselectedLabelColor: const Color(0xff000000),
                tabs: const [Tab(text: 'Internship'), Tab(text: 'Job')],
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                MyInternship(),
                MyJob(),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
