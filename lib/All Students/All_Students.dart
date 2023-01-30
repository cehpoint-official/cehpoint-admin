import 'package:flutter/material.dart';

class All_Students extends StatelessWidget {
  const All_Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'All_Students',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Batch 1',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(height: 30),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 1',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 2',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 3',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Batch 2',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(height: 30),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 4',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 5',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Student 6',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
          ],
        ),
      ),
    );
  }
}
