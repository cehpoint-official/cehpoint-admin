import 'package:flutter/material.dart';

class Completed_projects extends StatelessWidget {
  var appBarHeight = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Completed projects',
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
          PopupMenuButton(
              offset: Offset(0.0, appBarHeight),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              padding: const EdgeInsets.all(15),
              itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      child: Text(
                        'All',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'This week',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'This month',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'This year',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
              child: Image.asset(
                'Assets/Completed_projects.png',
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Project 1',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'completed on 10.01.2023',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 129,
                ),
                SizedBox(
                    height: 20,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffbacD4C00B),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, 'Completedprojectsdetails');
                      },
                      child: const Center(
                          child: Text(
                        'View details',
                        style: TextStyle(
                            color: Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Project 2',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'completed on 15.01.2023',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 129,
                ),
                SizedBox(
                    height: 20,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffbacD4C00B),
                      ),
                      onPressed: () {},
                      child: const Center(
                          child: Text(
                        'View details',
                        style: TextStyle(
                            color: Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
