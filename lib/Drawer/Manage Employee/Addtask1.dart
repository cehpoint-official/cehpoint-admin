import 'package:flutter/material.dart';

class Addtask1 extends StatelessWidget {
  const Addtask1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text(
            'Add task',
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
            Navigator.pushNamed(context, 'AllEmployee');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 48, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    '+Add a task',
                    style: TextStyle(
                        color: Color(
                          0xffFFFFFF,
                        ),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Employee 1',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                SizedBox(
                  height: 27,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Addtaskdetails');
                    },
                    child: const Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 63,
            ),
            Container(
              height: 55,
              decoration:
                  const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/Task1.png'),
                        const SizedBox(
                          width: 21,
                        ),
                        const Text(
                          'Task 1',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Container(
              height: 55,
              decoration:
                  const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/Task2.png'),
                        const SizedBox(
                          width: 21,
                        ),
                        const Text(
                          'Task 2',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
