// ignore: file_names
import 'package:cehpoint_admin/All%20Client/All_Clientdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Client waiting list/Clientdetails.dart';

// ignore: camel_case_types
class All_clients extends StatefulWidget {
  const All_clients({super.key});

  @override
  State<All_clients> createState() => _All_clientsState();
}

class _All_clientsState extends State<All_clients> {
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
          'All Client',
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
                MaterialPageRoute(builder: (context) => All_Clientdetails(allclientDetails:  ApiData[index],)),
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
