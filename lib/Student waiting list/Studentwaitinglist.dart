// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import 'Student_details.dart';

// ignore: camel_case_types
class Student_waiting_list extends StatefulWidget {
  const Student_waiting_list({super.key});

  @override
  State<Student_waiting_list> createState() => _Student_waiting_listState();
}

class _Student_waiting_listState extends State<Student_waiting_list> {
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
}


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'Student_details.dart';

// class Student_waiting_list extends StatelessWidget {
//   Future<List<dynamic>> fetchData() async {
//     final response = await http
//         .get(Uri.parse('http://localhost:5000/getallunapprovedstudent'));
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to fetch data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: EdgeInsets.only(left: 40.w),
//           child: Text(
//             'Student waiting list',
//             style: TextStyle(color: Colors.black87, fontSize: 18.sp),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.black87,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Dashboard');
//           },
//         ),
//       ),
//       body: FutureBuilder<List<dynamic>>(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List<dynamic> students = snapshot.data!;
//             return ListView.builder(
//               itemCount: students.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Student_details(),
//                       ),
//                     );
//                   },
//                   title: Text(students[index]['name'],
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, fontSize: 16.sp)),
//                   trailing: Image.asset('Assets/payment1.png'),
//                   leading: Image.asset(
//                     'Assets/Student_waiting_list.png',
//                   ),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }