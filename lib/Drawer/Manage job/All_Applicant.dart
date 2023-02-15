import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'JobApplicantsDetail01.dart';

// ignore: camel_case_types
class All_Applicant extends StatefulWidget {
  const All_Applicant({super.key});

  @override
  State<All_Applicant> createState() => _All_ApplicantState();
}

class Applicant {
  String name;
  String title;
  String field;
  String date;
  bool isSelected;

  Applicant(
      {required this.name,
      required this.title,
      required this.field,
      required this.date,
      required this.isSelected});
}

class _All_ApplicantState extends State<All_Applicant> {
  List<Applicant> app = [
    Applicant(
        name: "Company 1",
        title: "Applicant 1",
        field: "Web development",
        date: " 02/01/2023",
        isSelected: false),
    Applicant(
        name: "cehpoint",
        title: "Applicant 2",
        field: "Web development",
        date: " 02/01/2023",
        isSelected: false),
  ];
  bool canSelect = false;
  int count = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 31.w,
        ),
        child: ListView.builder(
          itemCount: app.length,
          itemBuilder: (context, position) {
            return InkWell(
              onLongPress: () {
                if (!canSelect) {
                  canSelect = true;
                  setState(() {
                    app[position].isSelected = !app[position].isSelected;
                  });
                  app[position].isSelected ? count++ : count--;
                }
              },
              onTap: () {
                if (canSelect) {
                  setState(() {
                    app[position].isSelected = !app[position].isSelected;
                  });
                  app[position].isSelected ? count++ : count--;
                  if (count == -1) canSelect = false;
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobApplicantsDetails01(),
                    ),
                  );
                }
              },
              child: Container(
                color: app[position].isSelected
                    ? const Color.fromRGBO(212, 192, 11, 0.16)
                    : Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18.w, right: 24.w),
                          child: Image.asset('Assets/All_Applicant1.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              app[position].title,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              app[position].name,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              app[position].field,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Apply on${app[position].date}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


//  Column(
        //   children: [
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image.asset('Assets/All_Applicant1.png'),
        //         SizedBox(
        //           width: 18.w,
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               'Applicant 1',
        //               style: TextStyle(
        //                   fontSize: 15.sp, fontWeight: FontWeight.w600),
        //             ),
        //             SizedBox(
        //               height: 5.sp,
        //             ),
        //             Text(
        //               'Company 1',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w500),
        //             ),
        //             SizedBox(
        //               height: 7.sp,
        //             ),
        //             Text(
        //               'Web development',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w500),
        //             ),
        //             SizedBox(
        //               height: 5.h,
        //             ),
        //             Text(
        //               'Apply on 02/01/2023',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w300),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //     SizedBox(
        //       height: 31.h,
        //     ),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image.asset('Assets/All_Applicant1.png'),
        //         SizedBox(
        //           width: 18.w,
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               'Applicant 1',
        //               style: TextStyle(
        //                   fontSize: 15.sp, fontWeight: FontWeight.w600),
        //             ),
        //             SizedBox(
        //               height: 5.h,
        //             ),
        //             Text(
        //               'Company 1',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w500),
        //             ),
        //             SizedBox(
        //               height: 7.h,
        //             ),
        //             Text(
        //               'Web development',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w500),
        //             ),
        //             SizedBox(
        //               height: 5.h,
        //             ),
        //             Text(
        //               'Apply on 02/01/2023',
        //               style: TextStyle(
        //                   fontSize: 12.sp, fontWeight: FontWeight.w300),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //   ],
        // ),