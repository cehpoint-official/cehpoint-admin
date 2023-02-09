import 'package:cehpoint_admin/Drawer/PaymentDrewer/Denieddrawer.dart';
import 'package:cehpoint_admin/Drawer/PaymentDrewer/Payeddrawer.dart';
import 'package:cehpoint_admin/Drawer/PaymentDrewer/Pendingdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paymentdrawer extends StatefulWidget {
  const Paymentdrawer({super.key});

  @override
  State<Paymentdrawer> createState() => _PaymentdrawerState();
}

class _PaymentdrawerState extends State<Paymentdrawer>
    with SingleTickerProviderStateMixin {
  var appBarHeight = AppBar().preferredSize.height;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 3,
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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 90.w),
            child: Text(
              'Payment',
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
                      'Pending',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Payed',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Denied',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Pendingdrawer(),
                    Payeddrawer(),
                    Denieddrwer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
