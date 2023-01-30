// ignore: file_names
import 'package:cehpoint_admin/Dashboard/Profile.dart';
import 'package:cehpoint_admin/Drawer/Drawer.dart';
import 'cardview.dart';
import 'package:flutter/material.dart';

class Data {
  String text;
  String count;
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
class MyDashborad extends StatelessWidget {
  MyDashborad({super.key});

  List<Data> Datas = [
    Data(
      count: "03",
      text: 'Student waiting list',
      image: 'Assets/Dashboard/Student_waiting_list_icon.png',
      color: const Color(0xffD4C00B),
      name: 'Studentwaitinglist',
    ),
    Data(
      count: "05",
      text: 'Client waiting list',
      image: 'Assets/Dashboard/Client_waiting_list_icon.png',
      color: const Color(0xff7C92CC),
      name: 'Clientwaitinglist',
    ),
    Data(
      count: "10",
      text: 'All Students',
      image: 'Assets/Dashboard/All_Students_icon.png',
      color: const Color(0xffF9836A),
      name: 'All_Students',
    ),
    Data(
      count: "06",
      text: 'All clients',
      image: 'Assets/Dashboard/All_clients_icon.png',
      color: const Color(0xffF8CE7E),
      name: 'All_clients',
    ),
    Data(
      count: "06",
      text: 'Pending Job Applicants',
      image: 'Assets/Dashboard/Pending_Job_Applicants_icon.png',
      color: const Color(0xff58B039),
      name: 'PendingJobApplicants',
    ),
    Data(
      count: "10",
      text: 'Pending Internship Applicants',
      image: 'Assets/Dashboard/Pending_Internship_Applicants_icon.png',
      color: const Color(0xff2DADBE),
      name: 'InternshipApplicants',
    ),
    Data(
      count: "04",
      text: 'Total Pending Posts',
      image: 'Assets/Dashboard/Total_Pending_Posts_icon.png',
      color: const Color(0xffF26262),
      name: 'All_Posts',
    ),
    Data(
      count: "04",
      text: 'Total  employees',
      image: 'Assets/Dashboard/Total_empolyees_icon.png',
      color: const Color(0xff8077B9),
      name: 'total_empolyees',
    ),
    Data(
      count: "03",
      text: 'Total ongoing Projects',
      image: 'Assets/Dashboard/Total_ongoing_Projects_icon.png',
      color: const Color(0xffBC64AE),
      name: 'On_going_Projects',
    ),
    Data(
      count: "03",
      text: 'Pending projects',
      image: 'Assets/Dashboard/Pending_projects_icon.png',
      color: const Color(0xff24AE85),
      name: 'Pending_Projects',
    ),
    Data(
      count: "03",
      text: 'Premium Projects',
      image: 'Assets/Dashboard/Premium_Projects_icon.png',
      color: const Color(0xffDB8D17),
      name: 'Premium_Projects',
    ),
    Data(
      count: "30",
      text: ' Completed projects',
      image: 'Assets/Dashboard/Completed_projects_icon.png',
      color: const Color(0xffC2D456),
      name: 'Completed_projects',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: const CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage(
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
              height: 140,
              width: 180,
              child: Carditem(
                count: Datas[index].count,
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
