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
          actions: [
            InkWell(
              child: Image.asset('Assets/totalemployees.png'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Delete Employee',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffE43131)),
                        ),
                        content: Text(
                          """Are you sure you want to delete “Applicant 1 “""",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff000000)),
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 47.h,
                                width: 139.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffF92222),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0.r),
                                          bottomRight: Radius.circular(10.0.r),
                                          bottomLeft: Radius.circular(10.0.r),
                                          topLeft: Radius.circular(10.0.r),
                                        ),
                                      )),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'Manage_job');
                                  },
                                  child: Text(
                                    'DELETE',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47.h,
                                width: 139.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff2A55C3),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0.r),
                                          bottomRight: Radius.circular(10.0.r),
                                          bottomLeft: Radius.circular(10.0.r),
                                          topLeft: Radius.circular(10.0.r),
                                        ),
                                      )),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'Manage_job');
                                  },
                                  child: Text(
                                    'CANCEL',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    });
              },
            )
          ],
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
