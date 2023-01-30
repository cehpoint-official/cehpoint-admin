import 'package:flutter/material.dart';

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
          title: const Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text(
              'View all post',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            PopupMenuButton(
                offset: Offset(0.0, appBarHeight),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                padding: const EdgeInsets.all(15),
                itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(
                        child: Text(
                          'Web development',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          'App development',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          'Marketing Specialist',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          ''' Cyber security
                              Specialist''',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          'DevSecOps',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          '''Cyber security
                           mentor''',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 8),
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
          children: [
            TabBar(
              indicatorColor: Color(0xffD4C00B),
              labelColor: Color(0xff000000),
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'My post',
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Other posts',
                    ),
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





// import 'package:flutter/material.dart';

// import 'TabBar/My_post.dart';
// import 'TabBar/Other_posts.dart';

// class Viewallpost extends StatefulWidget {
//   const Viewallpost({super.key});

//   @override
//   State<Viewallpost> createState() => _ViewallpostState();
// }

// class _ViewallpostState extends State<Viewallpost>
//     with SingleTickerProviderStateMixin {
//   var appBarHeight = AppBar().preferredSize.height;
//   late TabController tabController;

//   @override
//   void initState() {
//     tabController = TabController(
//       length: 2,
//       vsync: this,
//     );
//     super.initState();
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Padding(
//           padding: EdgeInsets.only(left: 80),
//           child: Text(
//             'View all post',
//             style: TextStyle(color: Colors.black87),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           PopupMenuButton(
//               offset: Offset(0.0, appBarHeight),
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(8.0),
//                   bottomRight: Radius.circular(8.0),
//                   topLeft: Radius.circular(8.0),
//                   topRight: Radius.circular(8.0),
//                 ),
//               ),
//               padding: const EdgeInsets.all(15),
//               itemBuilder: (BuildContext context) => [
//                     const PopupMenuItem(
//                       child: Text(
//                         'Web development',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                     const PopupMenuItem(
//                       child: Text(
//                         'App development',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                     const PopupMenuItem(
//                       child: Text(
//                         'Marketing Specialist',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                     const PopupMenuItem(
//                       child: Text(
//                         ''' Cyber security
//                             Specialist''',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                     const PopupMenuItem(
//                       child: Text(
//                         'DevSecOps',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                     const PopupMenuItem(
//                       child: Text(
//                         '''Cyber security
//                          mentor''',
//                         style:
//                             TextStyle(fontWeight: FontWeight.w700, fontSize: 8),
//                       ),
//                     ),
//                   ],
//               child: Image.asset(
//                 'Assets/Completed_projects.png',
//               )),
//         ],
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.black87,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Dashboard');
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 60),
//         child: Column(children: [
//           TabBar(
//             indicatorColor: Color(0xffD4C00B),
//             labelColor: Color(0xff000000),
//             controller: tabController,
//             tabs: const [
//               Tab(
//                 text: 'My post',
//               ),
//               Tab(text: 'Other posts'),
//             ],
//           ),
//           Expanded(
//               child: TabBarView(
//             controller: tabController,
//             children: [
//               My_post(),
//               Other_posts(),
//             ],
//           ))
//         ]),
//       ),
//     );
//   }
// }
