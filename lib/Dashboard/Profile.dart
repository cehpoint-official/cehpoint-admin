import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              Image.asset('Assets/camera.png'),
              const Padding(
                padding: EdgeInsets.only(right: 30, left: 3),
                child: Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
              )
            ],
          )
        ],
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
        padding: const EdgeInsets.only(top: 36, left: 35, right: 35),
        child: Column(
          children: [
            Center(child: Image.asset('Assets/bigprofile.png')),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'Hi Jit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile1.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Edit Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile2.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Add gift',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile3.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Add free service',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile4.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Case studies',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile5.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Payments',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile6.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Settings',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile7.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Help',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: Color(0xff0077B5), shape: BoxShape.circle),
                        child: Image.asset('Assets/profile8.png')),
                    const SizedBox(
                      width: 26,
                    ),
                    const Text(
                      'Log-Out',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
                Image.asset('Assets/profileall.png')
              ],
            ),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
