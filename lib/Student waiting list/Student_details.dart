import 'package:flutter/material.dart';

class Student_details extends StatelessWidget {
  const Student_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'Student details',
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
            Navigator.pushNamed(context, 'Studentwaitinglist');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        const Text(
                          'Are you interested in Cyber Future Course?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        const Text(
                          'Do your parents support you?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        const Text(
                          'Are you comfortable with online classes?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Name - Asit Jana',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Guardian Name  - Papa Jana',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number - 9155965403',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email ID - asit@gmail.com',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          ' Address - Jautia ,South 24 pargona',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Learning Interest - Cyber Security ',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Future Goals - Get a good job',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'How did you hear about us - Friend',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(),
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
                                            Image.asset(
                                                'Assets/bttomsheet.png'),
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
            ),
          ],
        ),
      ),
    );
  }
}
