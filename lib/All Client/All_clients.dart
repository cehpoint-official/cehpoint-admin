// ignore: file_names
import 'dart:convert';

import 'package:cehpoint_admin/All%20Client/All_Clientdetails.dart';
import 'package:cehpoint_admin/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
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
    http.Response res;
    res = await http.get(Uri.parse('${MyApp.API_URL}/getclientdata'));

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
    //     "representativeName": "jai",
    //     "companyName": "hanuman",
    //     "phoneNumber": "1234567890",
    //     "email": "hello@world.com",
    //     "address": "something",
    //     "requirement": "web developement",
    //     "deadline": "30 days",
    //     "source": "Cehpoint stuff",
    //     "budget": "50000",
    //     "id": "CC9740e52524d577",
    //     "projectName": "boat"
    //   },
    //   {
    //     "representativeName": "hello",
    //     "companyName": "world",
    //     "phoneNumber": "1234567890",
    //     "email": "hello@world.com",
    //     "address": "something",
    //     "requirement": "web developement",
    //     "deadline": "30 days",
    //     "source": "Cehpoint stuff",
    //     "budget": "20000",
    //     "id": "CC122iu3ifieruji",
    //     "projectName": "hammer"
    //   }
    // ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                MaterialPageRoute(
                    builder: (context) => All_Clientdetails(
                          allclientDetails: ApiData[index],
                        )),
              );
            },
            title: Text(
              ApiData[index]["representativeName"],
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
