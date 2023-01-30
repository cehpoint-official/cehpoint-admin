import 'package:flutter/material.dart';

import 'All_Post.dart';

//Job
class All_Posts extends StatelessWidget {
  const All_Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              'All Posts',
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
          actions: [
            Center(
              child: Row(
                children: [
                  const Text(
                    'Job',
                    style: TextStyle(
                        color: Color(0xffD4C00B),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  PopupMenuButton(
                    onSelected: (result) {
                      if (result == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const All_Posts()));
                      } else if (result == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const All_Post()));
                      }
                    },
                    itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(
                        value: 0,
                        child: Center(
                            child: Text(
                          'Job',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )),
                      ),
                      const PopupMenuItem(
                          height: 1,
                          child: Divider(
                            height: 1,
                            thickness: 3,
                          )),
                      const PopupMenuItem(
                        value: 1,
                        child: Center(
                            child: Text(
                          'Internship',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )),
                      ),
                    ],
                    icon: Image.asset('Assets/downarrowwithouttail.png'),
                  ),
                ],
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/allpost.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Company 2',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Web development',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Remote , Minimum 5000K/month',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                        width: 90,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffbacD4C00B),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'PostDetails');
                          },
                          child: const Text('View details',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/allpost.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Company 2',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Web development',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Remote , Minimum 5000K/month',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                        width: 90,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffbacD4C00B),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'PostDetails');
                          },
                          child: const Text('View details',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
