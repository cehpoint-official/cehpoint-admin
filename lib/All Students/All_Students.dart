// ignore: file_names
import 'package:cehpoint_admin/All%20Students/student1details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Student waiting list/Student_details.dart';

// ignore: camel_case_types
class All_Students extends StatefulWidget {
  const All_Students({super.key});

  @override
  State<All_Students> createState() => _All_StudentsState();
}

class _All_StudentsState extends State<All_Students> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    GetData();
  }

  List ApiData = [];
  GetData() async {
    // // return;
    // http.Response res;
    // res = await http
    //     .get(Uri.parse("http://localhost:5000/getallunapprovedstudent"));
    // if (res.statusCode == 200) {
    //   ApiData = jsonDecode(res.body);
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ApiData = [
      {
        "name": "some name",
        "guardianName": "papa",
        "phoneNumber": "12345",
        "email": "abc@xyz.com",
        "address": "china",
        "interest": "i want to join you organization for money",
        "goals": "fullstack developer",
        "source": "google",
        "courseInterested": false,
        "parentSupport": true,
        "onlineComfortable": false,
        "approvalStatus": false
      },
      {
        "name": "rohan",
        "guardianName": "mummy",
        "phoneNumber": "67890",
        "email": "gg@mm.com",
        "address": "india",
        "interest": "no interest",
        "goals": "become rich",
        "source": "twitter",
        "courseInterested": true,
        "parentSupport": false,
        "onlineComfortable": true,
        "approvalStatus": true
      }
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All Students',
          style: TextStyle(color: Colors.black87, fontSize: 18.sp),
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
        itemCount: ApiData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Student_details(
                    studentDetails: ApiData[index],
                  ),
                ),
              );
            },
            title: Text(
              ApiData[index]["name"],
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
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Padding(
  //         padding: EdgeInsets.only(left: 80.w),
  //         child: Text(
  //           'All Students',
  //           style: TextStyle(color: Colors.black87, fontSize: 18.sp),
  //         ),
  //       ),
  //       backgroundColor: Colors.transparent,
  //       elevation: 0,
  //       leading: IconButton(
  //         icon: const Icon(
  //           Icons.arrow_back,
  //           color: Colors.black87,
  //         ),
  //         onPressed: () {
  //           Navigator.pushNamed(context, 'Dashboard');
  //         },
  //       ),
  //     ),
  //     body: Padding(
  //       padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 1',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 2',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 3',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 4',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 5',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => const student1details(),
  //                 ),
  //               );
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(children: [
  //                   Image.asset(
  //                     'Assets/Student_waiting_list.png',
  //                   ),
  //                   SizedBox(
  //                     width: 20.w,
  //                   ),
  //                   Text(
  //                     'Student 6',
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w500, fontSize: 16.sp),
  //                   ),
  //                 ]),
  //                 Image.asset('Assets/payment1.png')
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.h,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
