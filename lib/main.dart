import 'package:cehpoint_admin/All%20Client/All_Clientdetails.dart';
import 'package:cehpoint_admin/All%20Students/All_Students.dart';
import 'package:cehpoint_admin/All%20Client/All_clients.dart';
import 'package:cehpoint_admin/All%20Students/student1details.dart';
import 'package:cehpoint_admin/Client%20waiting%20list/Updateclientdetails.dart';
import 'package:cehpoint_admin/Client%20waiting%20list/Updateclientdetails2.dart';
import 'package:cehpoint_admin/Completed%20projects/Completed_projects.dart';
import 'package:cehpoint_admin/Completed%20projects/Completedprojectsdetails.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Add%20gift/Addgift.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Add%20gift/Addgiftforclient.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Add%20gift/Addgiftforstudent.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Case%20studies/Casestudies.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Help/Help.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/Denied1.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/EmployeePaymentDetails.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/Payed.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/Payed1.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/Payment.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Profile.dart';
import 'package:cehpoint_admin/Dashboard/Profile/free%20service/Addfreeservice.dart';
import 'package:cehpoint_admin/Drawer/Demo%20classes/UploadDemoclasses.dart';
import 'package:cehpoint_admin/Drawer/Drawer.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Classes/UpdateClassdetails.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Classes/UpdateClassdetails2.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Employee/Addtask1.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Employee/Addtask12.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Employee/Addtaskdetails.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Employee/AllEmployee.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Employee/Alltask.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Internship/Manage_Internship.dart';
import 'package:cehpoint_admin/Drawer/Manage%20Internship/Updatedetails.dart';
import 'package:cehpoint_admin/Drawer/Manage%20job/Manage_job.dart';
import 'package:cehpoint_admin/Drawer/Manage%20reports/Addreport.dart';
import 'package:cehpoint_admin/Drawer/Manage%20reports/Clientsweeklyreport.dart';
import 'package:cehpoint_admin/Drawer/PaymentDrewer/paymentdrawer.dart';
import 'package:cehpoint_admin/Drawer/Update%20approve%20details/UpdateStudentdetails.dart';
import 'package:cehpoint_admin/Drawer/Update%20approve%20details/UpdateStudentdetails2.dart';
import 'package:cehpoint_admin/Drawer/Upload%20videos/Upload_videos.dart';
import 'package:cehpoint_admin/Pending%20%20projects/Pending_Projects.dart';
import 'package:cehpoint_admin/Pending%20%20projects/Pending_Projects_details.dart';
import 'package:cehpoint_admin/PendingInternshipApplicants/InternshipApplicants.dart';
import 'package:cehpoint_admin/PendingInternshipApplicants/InternshipApplicantsDetails.dart';
import 'package:cehpoint_admin/Pending%20Job%20%20Applicants/JobApplicantsDetails.dart';
import 'package:cehpoint_admin/Pending%20Job%20%20Applicants/PendingJobApplicants.dart';
import 'package:cehpoint_admin/Premium%20Client%20waiting%20list/Premium_Projects.dart';
import 'package:cehpoint_admin/SplashScreen.dart';
import 'package:cehpoint_admin/Student%20waiting%20list/Student_details.dart';
import 'package:cehpoint_admin/Pending%20Job%20%20Applicants/Updateapprovedetails.dart';
import 'package:cehpoint_admin/PendingInternshipApplicants/Updateapprovedetails2.dart';
import 'package:cehpoint_admin/Student%20waiting%20list/Updatestudentdeatils11.dart';
import 'package:cehpoint_admin/Student%20waiting%20list/Updatestudentdetails12.dart';
import 'package:cehpoint_admin/Total%20%20ongoing%20Projects/On_going_Projects.dart';
import 'package:cehpoint_admin/Total%20%20ongoing%20Projects/On_going_Projects_details.dart';
import 'package:cehpoint_admin/Total%20Pending%20Posts/All_Post.dart';
import 'package:cehpoint_admin/Total%20Pending%20Posts/All_Posts.dart';
import 'package:cehpoint_admin/Total%20Pending%20Posts/PostDetail.dart';
import 'package:cehpoint_admin/Total%20Pending%20Posts/PostDetails.dart';
import 'package:cehpoint_admin/Total%20employees/total_employees.dart';

import 'package:flutter/material.dart';

import 'Client waiting list/Clientdetails.dart';
import 'Client waiting list/Clientwaitinglist.dart';
import 'Dashboard/Dashboard.dart';
import 'Student waiting list/Studentwaitinglist.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'SplashScreen',
        routes: {
          'SplashScreen': ((context) => MySplash_Screen()),
          'Dashboard': ((context) => MyDashborad()),
          'Drawer': ((context) => MyDrawer()),
          'Studentwaitinglist': ((context) => Student_waiting_list()),
          'Student_details': ((context) => Student_details()),
          'Clientwaitinglist': ((context) => Client_waiting_list()),
          'Clientdetails': ((context) => Client_details()),
          'All_Students': ((context) => All_Students()),
          'All_clients': ((context) => All_clients()),
          'Premium_Projects': ((context) => Premium_Projects()),
          'PendingJobApplicants': ((context) => Pending_Job_Applicants()),
          'JobApplicantsDetails': ((context) => JobApplicantsDetails()),
          'InternshipApplicants': ((context) => Internship_Applicants()),
          'InternshipApplicantsDetails': ((context) =>
              InternshipApplicantsDetails()),
          'Updateapprovedetails': ((context) => Updateapprovedetails()),
          'Updateapprovedetails2': ((context) => Updateapprovedetails2()),
          'total_empolyees': ((context) => total_employees()),
          'All_Posts': ((context) => All_Posts()),
          'All_Post': ((context) => All_Post()),
          'PostDetails': ((context) => PostDetails()),
          'PostDetail': ((context) => PostDetail()),
          'On_going_Projects': ((context) => On_going_Projects()),
          'On_going_Projects_details': ((context) =>
              On_going_Projects_details()),
          'Pending_Projects': ((context) => Pending_Projects()),
          'Pending_Projects_details': ((context) => Pending_Projects_details()),
          'Completed_projects': ((context) => Completed_projects()),
          'Completedprojectsdetails': ((context) => Completedprojectsdetails()),
          'UpdateStudentdetails': ((context) => UpdateStudentdetails()),
          'UpdateStudentdetails2': ((context) => UpdateStudentdetails2()),
          'UpdateClassdetails2': ((context) => UpdateClassdetails2()),
          'UpdateClassdetails': ((context) => UpdateClassdetails()),
          'Addreport': ((context) => Addreport()),
          'Clientsweeklyreport': ((context) => Clientsweeklyreport()),
          'AllEmployee': ((context) => AllEmployee()),
          'Addtask1': ((context) => Addtask1()),
          'Addtaskdetails': ((context) => Addtaskdetails()),
          'Upload_videos': ((context) => Upload_videos()),
          'UploadDemoclasses': ((context) => Upload_Demo_classes()),
          'Addtask1': ((context) => Addtask1()),
          'InternshipApplicants': ((context) => Internship_Applicants()),
          'Alltask': ((context) => All_Task()),
          'Addtask12': ((context) => Addtask12()),
          'Profile': ((context) => Profile()),
          'EmployeePaymentDetails': ((context) => EmployeePaymentDetails()),
          'Payment': ((context) => Payment()),
          'Denied1': ((context) => Denied1()),
          'Addgiftforstudent': ((context) => Addgiftforstudent()),
          'Addgiftforclient': ((context) => Addgiftforclient()),
          'Addgift': ((context) => Addgift()),
          'Help': ((context) => Help()),
          'total_employees': ((context) => total_employees()),
          'paymentdrawer': ((context) => Paymentdrawer()),
          'student1details': ((context) => student1details()),
          'Updateclientdetails': ((context) => Updateclientdetails()),
          'Updateclientdetails2': ((context) => Updateclientdetails2()),
          'Addfreeservice': ((context) => Addfreeservice()),
          'Casestudies': ((context) => Casestudies()),
          'Manage_Internship': ((context) => Manage_Internship()),
          'Manage_job': ((context) => Manage_job()),
          'Updatestudentdetails11': ((context) => Updatestudentdetails11()),
          'Student_details': ((context) => Student_details()),
          'Updatestudentdetails12': ((context) => Updatestudentdetails12()),
          'Updatedetails': ((context) => Updatedetails())
        },
      ),
      designSize: const Size(411, 843),
    );
  }
}
