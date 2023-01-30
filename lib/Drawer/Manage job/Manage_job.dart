import 'package:cehpoint_admin/Drawer/Manage%20job/All_Applicant.dart';
import 'package:cehpoint_admin/Drawer/Manage%20job/Approve_details.dart';
import 'package:flutter/material.dart';

class Manage_job extends StatefulWidget {
  const Manage_job({super.key});

  @override
  State<Manage_job> createState() => _Manage_jobState();
}

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
          title: const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              'Manage job',
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




// import 'package:flutter/material.dart';

// class Manage_job extends StatefulWidget {
//   const Manage_job({super.key});

//   @override
//   State<Manage_job> createState() => _Manage_jobState();
// }

// class _Manage_jobState extends State<Manage_job>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     tabController = TabController(length: 2, vsync: this);
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
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_sharp),
//           color: const Color(0xff000000),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Dashboard');
//           },
//         ),
//         title: const Padding(
//           padding: EdgeInsets.only(left: 90),
//           child: Text(
//             'Manage job',
//             style: TextStyle(
//                 fontWeight: FontWeight.w700, color: Color(0xff000000)),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               TabBar(
//                 labelColor: Color(0xff000000),
//                 controller: tabController,
//                 tabs: const [
//                   Tab(
//                     text: ' Approve details ',
//                   ),
//                   Tab(text: 'All Applicant'),
//                 ],
//               ),
//               const SizedBox(height: 25),
//               Expanded(
//                   child: TabBarView(
//                 controller: tabController,
//                 children: const [
//                   // MyEmployees(),
//                   // MyTask(),
//                 ],
//               ))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
