import 'package:flutter/material.dart';

class Pending_Projects extends StatelessWidget {
  const Pending_Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Pending  Projects',
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
        padding: const EdgeInsets.only(top: 90, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Coursera Project',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                const SizedBox(
                  width: 105,
                ),
                SizedBox(
                  height: 25,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Pending_Projects_details');
                    },
                    child: const Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 30,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Event Management',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                const SizedBox(
                  width: 85,
                ),
                SizedBox(
                  height: 25,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                    ),
                    onPressed: () {},
                    child: const Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 30,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset('Assets/On_going_Projects.png'),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'xyz  Project',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                const SizedBox(
                  width: 143,
                ),
                SizedBox(
                  height: 25,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                    ),
                    onPressed: () {},
                    child: const Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 30,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
