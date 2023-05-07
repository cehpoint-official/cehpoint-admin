// ignore: file_names
import 'package:cehpoint_admin/Student%20waiting%20list/Student_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Student_waiting_list extends StatelessWidget {
  final List<String> items = [
    "Asit Jana",
    "Nigar Sultana",
    "Dibiyajoti pal",
  ];
  Student_waiting_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Student waiting list',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Student_details(),
                ),
              );
            },
            title: Text(
              items[index],
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            trailing: Image.asset('Assets/payment1.png'),
            leading: Image.asset(
              'Assets/Student_waiting_list.png',
            ),
          );
        },
      ),
    );
  }
}

//  Padding(
//         padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Student_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(children: [
//                     Image.asset(
//                       'Assets/Student_waiting_list.png',
//                     ),
//                     SizedBox(
//                       width: 20.w,
//                     ),
//                     Text(
//                       'Asit Jana',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, fontSize: 16.sp),
//                     ),
//                   ]),
//                   Image.asset('Assets/payment1.png')
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Student_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(children: [
//                     Image.asset(
//                       'Assets/Student_waiting_list.png',
//                     ),
//                     SizedBox(
//                       width: 20.w,
//                     ),
//                     Text(
//                       'Nigar Sultana',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, fontSize: 16.sp),
//                     ),
//                   ]),
//                   Image.asset('Assets/payment1.png')
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Student_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(children: [
//                     Image.asset(
//                       'Assets/Student_waiting_list.png',
//                     ),
//                     SizedBox(
//                       width: 20.w,
//                     ),
//                     Text(
//                       'Dibiyajoti Pal',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, fontSize: 16.sp),
//                     ),
//                     SizedBox(
//                       width: 174.w,
//                     ),
//                   ]),
//                   Image.asset('Assets/payment1.png')
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//           ],
//         ),
//       ),