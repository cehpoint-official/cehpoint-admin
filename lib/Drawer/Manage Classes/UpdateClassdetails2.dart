import 'package:flutter/material.dart';

class UpdateClassdetails2 extends StatelessWidget {
  const UpdateClassdetails2({super.key});

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
            Navigator.pushNamed(context, 'UpdateClassdetails');
          },
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sylabus',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.3)),
              ),
              Row(
                children: [
                  Image.asset('Assets/UpdateClassdetails2.png'),
                  const Text(
                    'Edit',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: 500,
            color: Color(0xffFAF8E4),
            child: Padding(
              padding: const EdgeInsets.only(top: 52, bottom: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('Assets/bttomsheet.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/bottomsheet2.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Embedded Course brochure.pdf',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Class title',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Red Team Fundamentals',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Class link',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'https://meet.google.com/fhn-romm-fgf',
                style: TextStyle(
                    color: Color(0xff2A55C3),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Assignment link',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'https://docs.google.com/forms/',
                style: TextStyle(
                    color: Color(0xff2A55C3),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 143,
              ),
              height: 57,
              width: 450,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffbacD4C00B),
                ),
                child: const Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  // Navigator.pushNamed(context, 'UpdateStudentdetails2');
                },
              ))
        ]),
      ),
    );
  }
}
