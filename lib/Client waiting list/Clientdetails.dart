import 'package:flutter/material.dart';

class Client_details extends StatelessWidget {
  const Client_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: const Text(
            'Client details',
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
            Navigator.pushNamed(context, 'Clientwaitinglist');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'abcd mondal',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Company Name',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'xyz company',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Phone Number',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '7028361855',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Email ID',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'abcd@gmail.com',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Address',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Murshidabad',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Explain your Requirement',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'App development',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'What will be the project finishing deadline if we start working on your project next Monday ?',
              maxLines: 2,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '30th February',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "What's your budget for this project ? (optional)",
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '30,000',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'How did you hear about us',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Google',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 155,
              ),
              height: 47,
              width: 334,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffbacD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Center(
                    child: Text(
                  'Approve',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontWeight: FontWeight.w700),
                )),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 24),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 175,
                                    width: double.infinity,
                                    color: const Color(0xffD4C00B)
                                        .withOpacity(0.25),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 24, bottom: 16),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset('Assets/bttomsheet.png'),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  'Assets/bottomsheet2.png'),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                'Embedded Course brochure.pdf',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text('Payment link:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text('https://paymentlink.com',
                                      style: TextStyle(
                                          color: Color(0xff2A55C3),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ]),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffFFFFFF),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'Student_details');
                                    },
                                    child: const Text('Update',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffbacD4C00B),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'Student_details');
                                    },
                                    child: const Text('Send',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
