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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text(
              'View all post',
              style: TextStyle(color: Colors.black87, fontSize: 18.sp),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Flexible(
              child: PopupMenuButton(
                  offset: Offset(0.0, appBarHeight),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 8),
                  itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Web development',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            'App development',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Marketing Specialist',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            ''' Cyber security
                                  Specialist''',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            'DevSecOps',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            textAlign: TextAlign.left,
                            '''Cyber security
                                 mentor''',
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                      ],
                  child: Image.asset(
                    'Assets/Completed_projects.png',
                  )),
            ),
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
