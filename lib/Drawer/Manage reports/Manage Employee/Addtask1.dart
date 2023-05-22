// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addtask1 extends StatelessWidget {
  const Addtask1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add task',
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
            Navigator.pushNamed(context, 'AllEmployee');
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 14.h, right: 14.w, bottom: 14.h),
            child: SizedBox(
              height: 26.h,
              width: 90.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Addtask12');
                },
                child: Text('All Task',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 48.h, right: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Addtaskdetails');
                },
                child: const Center(
                  child: Text(
                    '+Add a task',
                    style: TextStyle(
                        color: Color(
                          0xffFFFFFF,
                        ),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Employee 1',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 27.h,
                  width: 103.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD4C00B),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Alltask');
                    },
                    child: Text('View details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 63.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.r)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, right: 16.w, top: 24.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Task Details',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffD4C00B)),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  'Task Title',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'xyz task',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Text(
                                  'Task No.',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Task 3',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Text(
                                  'Task completing date',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  '02.02.23',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 7.sp,
                                ),
                                Text(
                                  '''In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrateth
e visual form of documenttypefac
e without relying on meaningful content.''',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xff000000)),
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 55.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffFFFFFF),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Delete Task',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xffE43131)),
                                            ),
                                            content: Text(
                                              """Are you sure you want to delete Task""",
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff000000)),
                                            ),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    height: 47.h,
                                                    width: 139.w,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff2A55C3),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                ),
                                                              )),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            'Addtask1');
                                                      },
                                                      child: Text(
                                                        'CANCEL',
                                                        style: TextStyle(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 47.h,
                                                    width: 139.w,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffF92222),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                ),
                                                              )),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            'Addtask1');
                                                      },
                                                      child: Text(
                                                        'DELETE',
                                                        style: TextStyle(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        });
                                    // Navigator.pushNamed(context, 'Addtask1');
                                  },
                                  child: Text('Delete',
                                      style: TextStyle(
                                          color: const Color(0xffE71616),
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
                                    backgroundColor: const Color(0xffD4C00B),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'Addtaskdetails3');
                                  },
                                  child: Text('Add Task',
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
              child: Container(
                height: 55.h,
                decoration:
                    const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ]),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 15.w, right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/Task1.png'),
                          SizedBox(
                            width: 21.w,
                          ),
                          Text(
                            'Task 1',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.r)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, right: 16.w, top: 24.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Task Details',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffD4C00B)),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  'Task Title',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'xyz task',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Text(
                                  'Task No.',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Task 3',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Text(
                                  'Task completing date',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  '02.02.23',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.6)),
                                ),
                                SizedBox(
                                  height: 7.sp,
                                ),
                                Text(
                                  '''In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrateth
e visual form of documenttypefac
e without relying on meaningful content.''',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xff000000)),
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 55.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffFFFFFF),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Delete Task',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xffE43131)),
                                            ),
                                            content: Text(
                                              """Are you sure you want to delete Task""",
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff000000)),
                                            ),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    height: 47.h,
                                                    width: 139.w,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff2A55C3),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                ),
                                                              )),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            'Addtask1');
                                                      },
                                                      child: Text(
                                                        'CANCEL',
                                                        style: TextStyle(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 47.h,
                                                    width: 139.w,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffF92222),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0.r),
                                                                ),
                                                              )),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            'Addtask1');
                                                      },
                                                      child: Text(
                                                        'DELETE',
                                                        style: TextStyle(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: Text('Delete',
                                      style: TextStyle(
                                          color: const Color(0xffE71616),
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
                                    backgroundColor: const Color(0xffD4C00B),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'Addtaskdetails3');
                                  },
                                  child: Text('Add Task',
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
              child: Container(
                height: 55.h,
                decoration:
                    const BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ]),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 15.w, right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('Assets/Task2.png'),
                          SizedBox(
                            width: 21.w,
                          ),
                          Text(
                            'Task 2',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
