import 'package:flutter/material.dart';

class Approve_details extends StatelessWidget {
  const Approve_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Added date',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '15.01.23',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Added time',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '8 PM',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Added meeting link',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'https://meet.google.com/fhn-romm-fgf',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff2A55C3)),
                  ),
                ],
              ),
              Container(
                width: 400,
                color: const Color(0xffD4C00B),
                height: 49,
                child: const Center(
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xffffffff)),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
