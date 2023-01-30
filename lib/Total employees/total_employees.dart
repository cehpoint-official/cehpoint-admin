import 'package:flutter/material.dart';

class total_employees extends StatelessWidget {
  const total_employees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'All Employees',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Employee 1',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 30,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Employee 2',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 30,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Employee 3',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 30,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Employee 4',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
