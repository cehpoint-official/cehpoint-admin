import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class PostDetails0 extends StatelessWidget {
  const PostDetails0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Post Details',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.sp,
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
            Navigator.pushNamed(context, 'Viewallpost');
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 60.h,
              left: 16.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Company Name',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'XYZ company',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Company Details',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "It is a development service providing ",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
                Text(
                  "company. etc.",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Minimum Stipend in Month',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "  5000K/month",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '''   Roles and Responsibilities-

1.Conducting analysis of website and application 
   requirements.
2.Writing back-end code and building efficient PHP 
   modules.
3.Developing back-end portals with an optimized 
   database.
4.Troubleshooting application and code issues.
5.Integrating data storage solutions.
6.Responding to integration requests from front-end 
   developers.
7.Finalizing back-end features and testing web 
   applications.
8.Updating and altering application features to 
   enhance performance.

''',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SizedBox(
                  height: 55.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'Form Submitted Successfully!',
                      );
                    },
                    child: Text('Approve',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
