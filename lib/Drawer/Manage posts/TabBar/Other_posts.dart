import 'package:cehpoint_admin/Drawer/Manage%20posts/TabBar/Job.dart';
import 'package:flutter/material.dart';

import 'Internship.dart';

class Other_posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 42, right: 42, top: 16),
          child: Column(children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(19)),
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(
                    0xffD4C00B,
                  ),
                  borderRadius: BorderRadius.circular(19),
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
