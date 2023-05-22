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
        "representative_name": "jai",
        "company_name": "hanuman",
        "phone_number": "1234567890",
        "email": "hello@world.com",
        "address": "something",
        "requirement": "web developement",
        "deadline": "30 days",
        "source": "Cehpoint stuff",
        "budget": "50000",
        "id": "CC9740e52524d577"
      },
      {
        "representative_name": "hello",
        "company_name": "world",
        "phone_number": "1234567890",
        "email": "hello@world.com",
        "address": "something",
        "requirement": "web developement",
        "deadline": "30 days",
        "source": "Cehpoint stuff",
        "budget": "20000",
        "id": "CC122iu3ifieruji"
      }
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              ApiData[index]["representative_name"],
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