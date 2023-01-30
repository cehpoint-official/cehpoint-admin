import 'package:flutter/material.dart';

class MyInternship extends StatelessWidget {
  const MyInternship({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 36,
        ),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('Assets/MyInternshiplogo.png'),
              const SizedBox(
                width: 31,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cehpoint',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Remote  2000/month',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Cyber security',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 25,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (() {}),
                      child: const Text(
                        'View details',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 29,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('Assets/MyInternshiplogo.png'),
              const SizedBox(
                width: 31,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cehpoint',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Remote  2000/month',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Cyber security',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 25,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (() {}),
                      child: const Text(
                        'View details',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
