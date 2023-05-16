// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Student_details extends StatelessWidget {
  const Student_details({super.key, required this.studentDetails});
  String getYesNoValue(bool value) {
    return value ? 'Yes' : 'No';
  }

  final Map studentDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Student details',
          style: TextStyle(color: Colors.black87, fontSize: 18.sp),
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
        padding: EdgeInsets.only(top: 30.h, bottom: 36.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Are you interested in Cyber Future Course?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['courseInterested'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Do your parents support you?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['parentSupport'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/bigdot.png'),
                        Text(
                          'Are you comfortable with online classes?',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset('Assets/answer_arrow.png'),
                        Text(
                          '${getYesNoValue(studentDetails['onlineComfortable'])}',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name - " + studentDetails['name'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "guardianName - " + studentDetails['guardianName'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "phoneNumber - " + studentDetails['phoneNumber'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "email - " + studentDetails['email'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "address - " + studentDetails['address'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "interest - " + studentDetails['interest'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "goals - " + studentDetails['goals'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "source - " + studentDetails['source'],
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]),
            ),
            Center(
              child: SizedBox(
                height: 47.h,
                width: 334.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD4C00B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Approve',
                    style: TextStyle(
                        color: const Color(
                          0xffFFFFFF,
                        ),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  )),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30.r)),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.w, right: 16.w, top: 24.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 175.h,
                                      width: double.infinity,
                                      color: const Color(0xffD4C00B)
                                          .withOpacity(0.25),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 24.h, bottom: 16.h),
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
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  'Embedded Course brochure.pdf',
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Text('Payment link:',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500)),
                                    TextButton(
                                      onPressed: () async {
                                        final url = 'https://www.youtube.com';
                                        // ignore: deprecated_member_use
                                        if (await canLaunch(url)) {
                                          // ignore: deprecated_member_use
                                          await launch(url,
                                              forceSafariVC: true,
                                              forceWebView: true,
                                              enableJavaScript: true);
                                        }
                                      },
                                      child: Text('https://www.youtube.com',
                                          style: TextStyle(
                                              color: const Color(0xff2A55C3),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500)),
                                    )

                                    // Text('Payment link:',
                                    //     style: TextStyle(
                                    //         fontSize: 14.sp,
                                    //         fontWeight: FontWeight.w500)),
                                    // SizedBox(
                                    //   height: 16.h,
                                    // ),
                                    // Text('https://paymentlink.com',
                                    //     style: TextStyle(
                                    //         color: const Color(0xff2A55C3),
                                    //         fontSize: 14.sp,
                                    //         fontWeight: FontWeight.w500)),
                                  ]),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 55.h,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffFFFFFF),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, 'Updatestudentdetails11');
                                      },
                                      child: Text('Update',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 55.h,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffD4C00B),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Send',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20.sp,
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

    // Future openBrowserURL({
    //   required String url,
    //   bool inApp = false,
    // }) async {
    //   if (await canLaunchUrl(url as Uri)) {
    //     await launchUrl(url as Uri,
    //         forceSafariVC: inApp, forceWebView: inApp, enableJavaScript: true);
    //   }
    // }
  }
}
