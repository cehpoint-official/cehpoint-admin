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
        "representative_name": "jai",
        "company_name": "hanuman",
        "phone_number": "1234567890",
        "email": "hello@world.com",
        "address": "something",
        "requirement": "web developement",
        "deadline": "30 days",
        "source": "Cehpoint stuff",
        "budget": "50000",
        "id": "CC9740e52524d577",
        "project_name": "boat"
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
        "id": "CC122iu3ifieruji",
        "project_name": "hammer"
      }
    ];
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
