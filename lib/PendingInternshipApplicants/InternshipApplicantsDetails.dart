import 'package:flutter/material.dart';

class InternshipApplicantsDetails extends StatelessWidget {
  const InternshipApplicantsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Internship Applicants Details',
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
            Navigator.pushNamed(context, 'PendingJobApplicants');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Bijoy Basu',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kolkata',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '+91 6789446754',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'bijoy@gmail.com',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Student  College ID card',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 115,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (() {}),
                      child: Row(
                        children: [
                          Image.asset(
                            'Assets/jobApplicantsDetailes.png',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'View file 1',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  ' Answers',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '1. Are you serious for this Internship?',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2. Are you ready for short assessment?',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3. Let us know your expectation? (Stipend)',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '5000/month',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 122),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffbacD4C00B),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'Updateapprovedetails2');
                        },
                        child: const Text('Approve',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
