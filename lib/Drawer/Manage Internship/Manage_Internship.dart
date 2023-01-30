import 'package:cehpoint_admin/Drawer/Manage%20job/All_Applicant.dart';
import 'package:cehpoint_admin/Drawer/Manage%20job/Approve_details.dart';
import 'package:flutter/material.dart';

class Manage_Internship extends StatefulWidget {
  const Manage_Internship({super.key});

  @override
  State<Manage_Internship> createState() => _Manage_InternshipState();
}

class _Manage_InternshipState extends State<Manage_Internship>
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
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              'Manage Internship',
              style: TextStyle(color: Colors.black87),
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
          padding: const EdgeInsets.only(top: 40),
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
