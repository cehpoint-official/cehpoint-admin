import 'package:flutter/material.dart';

class JobApplicantsDetails extends StatelessWidget {
  const JobApplicantsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            'Job Applicants Details',
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
                    height: 10,
                  ),
                  Text(
                    'I completed three internships before',
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
                    'Offer letter or payment receipt',
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
                  const SizedBox(
                    width: 10,
                  ),
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
                            'View file 2',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
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
                            'View file 3',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 11; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  i.toString(),
                                  style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  '.Question?',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '    Answer 1',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffbacD4C00B),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, 'Updateapprovedetails');
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
