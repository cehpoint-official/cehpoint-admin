// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'TabBar/My_post.dart';
import 'TabBar/Other_posts.dart';

class Viewallpost extends StatefulWidget {
  const Viewallpost({super.key});

  @override
  State<Viewallpost> createState() => _ViewallpostState();
}

class _ViewallpostState extends State<Viewallpost>
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

  final data = [
    'Web development',
    'App development',
    'Marketing Specialist',
    '''Cyber security
Specialist''',
    'DevSecOps',
    '''Cyber security
mentor'''
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'View all post',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            PopupMenuButton(
                offset: Offset(0.0, appBarHeight),
                constraints: BoxConstraints.tightFor(
                  width: 156.w,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                padding: EdgeInsets.only(left: 8.w),
                itemBuilder: (BuildContext context) => [
                      for (var item in data)
                        PopupMenuItem(
                          height: 0.h,
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 8.w),
                          child: Text(
                            textAlign: TextAlign.left,
                            item,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12.sp),
                          ),
                        ),
                    ],
                child: Image.asset(
                  'Assets/Completed_projects.png',
                )),
          ],
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
        body: Column(
          children: const [
            TabBar(
              indicatorColor: Color(0xffD4C00B),
              labelColor: Color(0xff000000),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'My post',
                  ),
                ),
                Tab(
                  child: Text(
                    'Other posts',
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Other_posts(),
                  My_post(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
