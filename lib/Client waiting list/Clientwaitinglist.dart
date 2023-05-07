// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Clientdetails.dart';

// ignore: camel_case_types
class Client_waiting_list extends StatelessWidget {
  const Client_waiting_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.h),
          child: Text(
            'Client waiting list',
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
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Client_details(),
                ),
              );
            },
            title: Text(
             "Client ${index + 1}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            trailing: Image.asset('Assets/payment1.png'),
            leading: Image.asset(
              'Assets/Client_waiting_list.png',
            ),
          );
        },
      ),
    );
  }
}




//  Padding(
//         padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Client_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'Assets/Client_waiting_list.png',
//                         ),
//                         SizedBox(
//                           width: 20.w,
//                         ),
//                         Text(
//                           'Client 1',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 16.sp),
//                         ),
//                       ],
//                     ),
//                     Image.asset('Assets/payment1.png')
//                   ]),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Client_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'Assets/Client_waiting_list.png',
//                         ),
//                         SizedBox(
//                           width: 20.w,
//                         ),
//                         Text(
//                           'Client 2',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 16.sp),
//                         ),
//                       ],
//                     ),
//                     Image.asset('Assets/payment1.png')
//                   ]),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Client_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'Assets/Client_waiting_list.png',
//                         ),
//                         SizedBox(
//                           width: 20.w,
//                         ),
//                         Text(
//                           'Client 3',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 16.sp),
//                         ),
//                       ],
//                     ),
//                     Image.asset('Assets/payment1.png')
//                   ]),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Client_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'Assets/Client_waiting_list.png',
//                         ),
//                         SizedBox(
//                           width: 20.w,
//                         ),
//                         Text(
//                           'Client 4',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 16.sp),
//                         ),
//                       ],
//                     ),
//                     Image.asset('Assets/payment1.png')
//                   ]),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Client_details(),
//                   ),
//                 );
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'Assets/Client_waiting_list.png',
//                         ),
//                         SizedBox(
//                           width: 20.w,
//                         ),
//                         Text(
//                           'Client 5',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 16.sp),
//                         ),
//                       ],
//                     ),
//                     Image.asset('Assets/payment1.png')
//                   ]),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//           ],
//         ),
//       ),