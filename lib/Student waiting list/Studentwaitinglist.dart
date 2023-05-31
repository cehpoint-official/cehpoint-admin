// ignore: file_names
import 'dart:convert';

import 'package:cehpoint_admin/main.dart';
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
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   GetData();
  // }

  // List ApiData = [];
  // GetData() async {
  //   http.Response res;
  //   res = await http.get(Uri.parse("${MyApp.API_URL}/getunapprovedstudents"));

  //   if (res.statusCode == 200) {
  //     var jsonData = jsonDecode(res.body);

  //     if (jsonData['ok']) {
  //       setState(() {
  //         ApiData = jsonData['data'];
  //       });
  //     }
  //   }
  // }

  void initState() {
    // TODO: implement initState
    super.initState();

    GetData();
  }

  List ApiData = [];
  GetData() async {
    http.Response res;
    res = await http.get(Uri.parse('${MyApp.API_URL}/getunapprovedstudents'));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      if (jsonData['ok']) {
        setState(() {
          ApiData = jsonData['data'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // ApiData = [
    //   {
    //     "name": "some name",
    //     "guardianName": "papa",
    //     "phoneNumber": "12345",
    //     "email": "abc@xyz.com",
    //     "address": "china",
    //     "interest": "i want to join you organization for money",
    //     "goals": "fullstack developer",
    //     "source": "google",
    //     "courseInterested": false,
    //     "parentSupport": true,
    //     "onlineComfortable": false,
    //     "approvalStatus": false
    //   },
    //   {
    //     "name": "rohan",
    //     "guardianName": "mummy",
    //     "phoneNumber": "67890",
    //     "email": "gg@mm.com",
    //     "address": "india",
    //     "interest": "no interest",
    //     "goals": "become rich",
    //     "source": "twitter",
    //     "courseInterested": true,
    //     "parentSupport": false,
    //     "onlineComfortable": true,
    //     "approvalStatus": true
    //   }
    // ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Student waiting list',
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
}




