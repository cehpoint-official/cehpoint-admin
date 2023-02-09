// ignore: file_names
import 'package:cehpoint_admin/All%20Client/All_clients.dart';
import 'package:cehpoint_admin/Drawer/Manage%20posts/Viewallpost.dart';
import 'package:cehpoint_admin/Drawer/PaymentDrewer/paymentdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Completed projects/Completed_projects.dart';
import '../Dashboard/Dashboard.dart';
import 'Demo classes/UploadDemoclasses.dart';
import 'Manage Classes/UpdateClassdetails.dart';
import 'Manage Employee/AllEmployee.dart';
import 'Manage Internship/Manage_Internship.dart';
import 'Manage job/Manage_job.dart';
import 'Manage posts/Uploadpost.dart';
import 'Manage reports/Clientsweeklyreport.dart';
import 'PremiumClient/PremiumClient.dart';
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
            contentPadding: EdgeInsets.only(left: 25.w),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Home.png",
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            tilePadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/approvedetails.png",
            ),
            title: Text(
              'approve details',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'Update client details',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'Update Student details',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_Classes.png",
            ),
            title: Text(
              'Manage Classes',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_reports.png",
            ),
            title: Text(
              'Manage reports',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
          ExpansionTile(
            tilePadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_Clients.png",
            ),
            title: Text(
              'Manage Clients',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'All clients',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => All_clients(),
                    ),
                  );
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'Premium clients',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PremiumClient(),
                    ),
                  );
                },
              ),
            ],
          ),

          //  ExpansionTile(
          //   contentPadding: EdgeInsets.only(left: 25.w),
          //   leading: Image.asset(
          //     "Assets/Drawer/Manage_Clients.png",
          //   ),
          //   title: Text(
          //     'Manage Clients',
          //     style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => MyDashborad(),
          //       ),
          //     );
          //   },
          // ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_Internship.png",
            ),
            title: Text(
              'Manage Internship',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_job.png",
            ),
            title: Text(
              'Manage job',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            tilePadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_posts.png",
            ),
            title: Text(
              'Manage posts',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'upload post',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
                contentPadding: EdgeInsets.only(left: 50.w),
                leading: Image.asset(
                  "Assets/Drawer/Update_Approve_details.png",
                ),
                title: Text(
                  'view all posts',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Upload_videos.png",
            ),
            title: Text(
              'Upload videos',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Demo_classes.png",
            ),
            title: Text(
              'Demo classes',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Manage_Employee.png",
            ),
            title: Text(
              'Manage Employee',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Completed_Projects.png",
            ),
            title: Text(
              'Completed Projects',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Payment.png",
            ),
            title: Text(
              'Payment',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Paymentdrawer(),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25.w),
            leading: Image.asset(
              "Assets/Drawer/Log_out.png",
            ),
            title: Text(
              'Log out',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
