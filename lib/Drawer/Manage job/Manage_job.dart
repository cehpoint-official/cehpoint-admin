import 'package:cehpoint_admin/Drawer/Manage%20job/All_Applicant.dart';
import 'package:cehpoint_admin/Drawer/Manage%20job/Approve_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Manage_job extends StatefulWidget {
  const Manage_job({super.key});

  @override
  State<Manage_job> createState() => _Manage_jobState();
}

// ignore: camel_case_types
class _Manage_jobState extends State<Manage_job>
    with SingleTickerProviderStateMixin {
  var appBarHeight = AppBar().preferredSize.height;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 90.w),
            child: Text(
              'Manage job',
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
          padding: EdgeInsets.only(top: 40.h),
          child: Column(
            children: const [
              TabBar(
                indicatorColor: Color(0xffD4C00B),
                labelColor: Color(0xff000000),
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Approve details',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'All Applicant',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[Approve_details(), All_Applicant()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
