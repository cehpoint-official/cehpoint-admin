import 'package:cehpoint_admin/Dashboard/Profile/Help/CallNumber.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Help/NegotiationNumber.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Help/WhatsappNumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 110.w),
          child: Text(
            'Help',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.sp,
            ),
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
            Navigator.pushNamed(context, 'Profile');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 44.h, left: 28.w, right: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Help information',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Whats app Number(client help)',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WhatsappNumber(),
                      ),
                    );
                  },
                  child: Image.asset('Assets/pencil.png'),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              '+91 955566677',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CEO Call Number',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CallNumber(),
                      ),
                    );
                  },
                  child: Image.asset('Assets/pencil.png'),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              '+91 955566677',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Negotiation Number',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NegotiationNumber(),
                      ),
                    );
                  },
                  child: Image.asset('Assets/pencil.png'),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '+91 955566677',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
