import 'package:flutter/material.dart';

class On_going_Projects_details extends StatelessWidget {
  const On_going_Projects_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'On going Projects details',
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
            Navigator.pushNamed(context, 'On_going_Projects');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60, top: 60, right: 30),
        child: Column(children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Project Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Project budget',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Project deadline',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Project details',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'My food box project',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '40,000',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '10 January',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'App Devolopment',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
