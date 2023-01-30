// ignore: file_names
import 'package:cehpoint_admin/Drawer/Manage%20posts/Viewallpost.dart';
import 'package:flutter/material.dart';

import '../Completed projects/Completed_projects.dart';
import '../Dashboard/Dashboard.dart';
import 'Demo classes/UploadDemoclasses.dart';
import 'Manage Classes/UpdateClassdetails.dart';
import 'Manage Employee/AllEmployee.dart';
import 'Manage Internship/Manage_Internship.dart';
import 'Manage job/Manage_job.dart';
import 'Manage posts/Uploadpost.dart';
import 'Manage reports/Clientsweeklyreport.dart';
import 'Update approve details/UpdateStudentdetails.dart';
import 'Update approve details/Updateclientdetails.dart';
import 'Upload videos/Upload_videos.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            horizontalTitleGap: 200,
            leading: const CircleAvatar(
              backgroundImage: AssetImage("Assets/logo.png"),
            ),
            title: const Icon(
              Icons.close,
              color: Colors.black87,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashborad(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Home.png",
            ),
            title: const Text(
              'Dashboard',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashborad(),
                ),
              );
            },
          ),
          ExpansionTile(
            tilePadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/approvedetails.png",
            ),
            title: const Text(
              'approve details',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.only(left: 50),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: const Text(
                  'Update client details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Updateclientdetails(),
                    ),
                  );
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.only(left: 50),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: const Text(
                  'Update Student details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateStudentdetails(),
                    ),
                  );
                },
              ),
            ],
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_Classes.png",
            ),
            title: const Text(
              'Manage Classes',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateClassdetails(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_reports.png",
            ),
            title: const Text(
              'Manage reports',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Clientsweeklyreport(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_Clients.png",
            ),
            title: const Text(
              'Manage Clients',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashborad(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_Internship.png",
            ),
            title: const Text(
              'Manage Internship',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Manage_Internship(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_job.png",
            ),
            title: const Text(
              'Manage job',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Manage_job(),
                ),
              );
            },
          ),
          ExpansionTile(
            tilePadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_posts.png",
            ),
            title: const Text(
              'Manage posts',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.only(left: 50),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: const Text(
                  'upload post',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Uploadpost(),
                    ),
                  );
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.only(left: 50),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: const Text(
                  'view all posts',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Viewallpost(),
                    ),
                  );
                },
              ),
            ],
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Upload_videos.png",
            ),
            title: const Text(
              'Upload videos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Upload_videos(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Demo_classes.png",
            ),
            title: const Text(
              'Demo classes',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Upload_Demo_classes(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Manage_Employee.png",
            ),
            title: const Text(
              'Manage Employee',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllEmployee(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Completed_Projects.png",
            ),
            title: const Text(
              'Completed Projects',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Completed_projects(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Payment.png",
            ),
            title: const Text(
              'Payment',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashborad(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 25),
            leading: Image.asset(
              "Assets/Drawer/Log_out.png",
            ),
            title: const Text(
              'Log out',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDashborad(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
