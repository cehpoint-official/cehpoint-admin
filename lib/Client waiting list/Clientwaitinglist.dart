// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import 'Clientdetails.dart';

// ignore: camel_case_types
class Client_waiting_list extends StatefulWidget {
  const Client_waiting_list({super.key});

  @override
  State<Client_waiting_list> createState() => _Client_waiting_listState();
}

class _Client_waiting_listState extends State<Client_waiting_list> {
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
        "name": "client1",
        "companyName": "comp1",
        "phoneNumber": "12345",
        "email": "client1@xyz.com",
        "address": "china",
        "requirement": "i want to join you organization for money",
        "goals": "fullstack developer",
        "source": "google",
        "budget": 10000,
        "approvalStatus": false
      },
      {
        "name": "client2",
        "companyName": "comp2",
        "phoneNumber": "67890",
        "email": "client2@mm.com",
        "address": "india",
        "requirement": "no interest",
        "goals": "become rich",
        "source": "twitter",
        "budget": 20000,
        "approvalStatus": true
      }
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Client waiting list',
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
                  builder: (context) => Client_details(
                    ClientDetails: ApiData[index],
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