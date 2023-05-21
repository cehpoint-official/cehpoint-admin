// ignore: file_names
import 'dart:convert';

import 'package:cehpoint_admin/Dashboard/Profile/Profile.dart';
import 'package:cehpoint_admin/Drawer/Drawer.dart';
import 'package:cehpoint_admin/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cardview.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data {
  String text;
  int count;
  String image;
  Color color;
  String name;

  Data({
    required this.count,
    required this.image,
    required this.text,
    required this.color,
    required this.name,
  });
}

// ignore: must_be_immutable
class MyDashborad extends StatefulWidget {
  MyDashborad({super.key});

  @override
  State<MyDashborad> createState() => _MyDashboradState();
}

class _MyDashboradState extends State<MyDashborad> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    GetData();
  }

  Map ApiData = {};
  GetData() async {
    http.Response res;
    res = await http.get(Uri.parse("${MyApp.API_URL}/getcounts"));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      if (jsonData['ok']) {
        setState(() {
          ApiData = jsonData['data'];
        });
      }
    }
  }

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    List<Data> Datas = [
      Data(
        count: ApiData["unapprovedStudentCount"] ?? 0,
        text: 'Student waiting list',
        image: 'Assets/Dashboard/Student_waiting_list_icon.png',
        color: const Color(0xffD4C00B),
        name: 'Studentwaitinglist',
      ),
      Data(
        count: ApiData["unapprovedClientCount"] ?? 0,
        text: 'Client waiting list',
        image: 'Assets/Dashboard/Client_waiting_list_icon.png',
        color: const Color(0xff7C92CC),
        name: 'Clientwaitinglist',
      ),
      Data(
        count: ApiData["studentCount"] ?? 0,
        text: 'All Students',
        image: 'Assets/Dashboard/All_Students_icon.png',
        color: const Color(0xffF9836A),
        name: 'All_Students',
      ),
      Data(
        count: ApiData["clientCount"] ?? 0,
        text: 'All clients',
        image: 'Assets/Dashboard/All_clients_icon.png',
        color: const Color(0xffF8CE7E),
        name: 'All_clients',
      ),
      Data(
        count: ApiData["pendingJobCount"] ?? 0,
        text: 'Pending Job Applicants',
        image: 'Assets/Dashboard/Pending_Job_Applicants_icon.png',
        color: const Color(0xff58B039),
        name: 'PendingJobApplicants',
      ),
      Data(
        count: ApiData["pendingInternCount"] ?? 0,
        text: 'Pending Internship Applicants',
        image: 'Assets/Dashboard/Pending_Internship_Applicants_icon.png',
        color: const Color(0xff2DADBE),
        name: 'InternshipApplicants',
      ),
      Data(
        count: ApiData["totalPendingPosts"] ?? 0,
        text: 'Total Pending Posts',
        image: 'Assets/Dashboard/Total_Pending_Posts_icon.png',
        color: const Color(0xffF26262),
        name: 'All_Posts',
      ),
      Data(
        count: ApiData["totalEmployees"] ?? 0,
        text: 'Total  employees',
        image: 'Assets/Dashboard/Total_empolyees_icon.png',
        color: const Color(0xff8077B9),
        name: 'total_empolyees',
      ),
      Data(
        count: ApiData["totalOngoingProjects"] ?? 0,
        text: 'Total ongoing Projects',
        image: 'Assets/Dashboard/Total_ongoing_Projects_icon.png',
        color: const Color(0xffBC64AE),
        name: 'On_going_Projects',
      ),
      Data(
        count: ApiData["pendingProjects"] ?? 0,
        text: 'Pending projects',
        image: 'Assets/Dashboard/Pending_projects_icon.png',
        color: const Color(0xff24AE85),
        name: 'Pending_Projects',
      ),
      Data(
        count: ApiData["premiumProjects"] ?? 0,
        text: 'Premium Projects',
        image: 'Assets/Dashboard/Premium_Projects_icon.png',
        color: const Color(0xffDB8D17),
        name: 'Premium_Projects',
      ),
      Data(
        count: ApiData["completed"] ?? 0,
        text: ' Completed projects',
        image: 'Assets/Dashboard/Completed_projects_icon.png',
        color: const Color(0xffC2D456),
        name: 'Completed_projects',
      ),
    ];
    return Scaffold(
      // drawer: Drawer(
      //   child: Carditem(),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 20.r,
                foregroundImage: const AssetImage(
                  'Assets/Dashboard/profile_icon.png',
                ),
              ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          shrinkWrap: true,
          // crossAxisCount is the number of columns
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 180 / 140,
          // This creates two columns with two items in each column
          children: List.generate(Datas.length, (index) {
            return SizedBox(
              height: 140.h,
              width: 180.w,
              child: Carditem(
                count: Datas[index].count.toString(),
                image: Datas[index].image,
                text: Datas[index].text,
                color: Datas[index].color,
                onPress: () => Navigator.pushNamed(context, Datas[index].name),
              ),
            );
          }),
        ),
      ),
    );
  }
}
