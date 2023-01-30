import 'package:flutter/material.dart';

class Internship_Applicants extends StatelessWidget {
  const Internship_Applicants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Internship Applicants',
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
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Image.asset(
              'Assets/PendingJobApplicants.png',
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Piku Basu',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Applied for Company 1',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Web development',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Apply on 02/01/2023',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 25,
                      width: 121,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffD4C00B),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, 'InternshipApplicantsDetails');
                        },
                        child: const Text('Update',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(children: [
            Image.asset(
              'Assets/PendingJobApplicants.png',
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Ahana Mitro',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Applied for Company 1',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Web development',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Apply on 02/01/2023',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 25,
                      width: 121,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffD4C00B),
                        ),
                        onPressed: () {},
                        child: const Text('Update',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
