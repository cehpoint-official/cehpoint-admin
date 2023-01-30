import 'package:flutter/material.dart';

class Student_waiting_list extends StatelessWidget {
  const Student_waiting_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Student waiting list',
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
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Asit Jana',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Nigar Sultana',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 170,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Dibiyajoti Pal',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 174,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
