import 'package:flutter/material.dart';

class UpdateStudentdetails extends StatelessWidget {
  const UpdateStudentdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Update Student details',
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
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Embedded Proposal',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: 500,
            color: Color(0xffFAF8E4),
            child: Center(
              child: Image.asset(
                "Assets/updatedetails.png",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Payment link:',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'add payment link',
            ),
          ),
          const SizedBox(
            height: 47,
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 165,
              ),
              height: 57,
              width: 450,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffbacD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  Navigator.pushNamed(context, 'UpdateStudentdetails2');
                },
              ))
        ]),
      ),
    );
  }
}
