import 'package:flutter/material.dart';

class Updateapprovedetails extends StatelessWidget {
  const Updateapprovedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            'Update approve details',
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
            Navigator.pushNamed(context, 'JobApplicantsDetails');
          },
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 75, left: 30, right: 30, bottom: 50),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Job approve details',
                style: TextStyle(
                    color: Color(
                      0xffD4C00B,
                    ),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2030));
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add date',
                  suffixIcon: Image.asset('Assets/calender.png')),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add time',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add meeting link'),
            ),
            const SizedBox(
              height: 310,
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
                        // Navigator.pushNamed(context, 'Updateapprovedetails');
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
    );
  }
}
