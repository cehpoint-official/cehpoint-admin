import 'package:flutter/material.dart';

class UpdateClassdetails extends StatelessWidget {
  const UpdateClassdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Update Class details',
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
            const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Add syllabus',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 500,
            color: Color(0xffFAF8E4),
            child: Center(
              child: Image.asset(
                "Assets/updatedetails.png",
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add class title',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add class link',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Assignment link',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 128,
              ),
              height: 57,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffbacD4C00B),
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
                    Navigator.pushNamed(context, 'UpdateClassdetails2');
                  }))
        ]),
      ),
    );
  }
}
