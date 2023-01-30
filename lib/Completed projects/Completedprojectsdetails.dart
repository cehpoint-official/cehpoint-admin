import 'package:flutter/material.dart';

class Completedprojectsdetails extends StatelessWidget {
  const Completedprojectsdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Completed projects details',
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
            Navigator.pushNamed(context, 'Completed_projects');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project Name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'Project 1',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project budget',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '40,000',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project deadline',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '10 January',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project details',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'App Devolopment',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Company name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'Xyz company',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Representative name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'abcd mondal',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Domain name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'xyz.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Phone number',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      Text(
                        '+91 2345667767',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'All reports',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Week 1 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Week 2 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Week 3 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Week 4 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Week 5 report',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Link: https://report.id=769%3A157&t=XtbCKaCwQ
GZWheWo-0''',
                style: TextStyle(
                  color: Color(0xff2A55C3),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 92,
              )
            ],
          ),
        ),
      ),
    );
  }
}
