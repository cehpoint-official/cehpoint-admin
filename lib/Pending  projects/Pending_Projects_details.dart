import 'package:flutter/material.dart';

class Pending_Projects_details extends StatelessWidget {
  const Pending_Projects_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Pending Projects details',
            style: TextStyle(color: Colors.black87),
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
            Navigator.pushNamed(context, 'Pending_Projects');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
        child: Column(children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Project Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Project budget',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Project deadline',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Project details',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 115,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Coursera project',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '40,000',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '10 January',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'App Devolopment',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 65,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Company name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Representative name ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Domain name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Xyz company',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'abcd mondal',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'xyz.com',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'xyz@gmail.com',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    '+91 2345667767',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 250,
          ),
          SizedBox(
              height: 57,
              width: 400,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffbacD4C00B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    'Approve',
                    style: TextStyle(
                        color: Color(
                          0xffFFFFFF,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                  onPressed: () {}))
        ]),
      ),
    );
  }
}
