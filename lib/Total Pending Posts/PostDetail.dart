import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'Post Details',
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
            Navigator.pushNamed(context, 'All_Post');
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Add Company Name',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'XYZ company',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Company Details',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "It is a development service providing ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Text(
                  "company. etc.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Minimum Stipend in Month',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "  5000K/month",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''   Roles and Responsibilities-

1.Conducting analysis of website and application 
   requirements.
2.Writing back-end code and building efficient PHP 
   modules.
3.Developing back-end portals with an optimized 
   database.
4.Troubleshooting application and code issues.
5.Integrating data storage solutions.
6.Responding to integration requests from front-end 
   developers.
7.Finalizing back-end features and testing web 
   applications.
8.Updating and altering application features to 
   enhance performance.

''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffbacD4C00B),
                    ),
                    onPressed: () {},
                    child: const Text('Approve',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
