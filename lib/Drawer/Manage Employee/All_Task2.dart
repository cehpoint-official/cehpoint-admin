import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class All_Task2 extends StatelessWidget {
  const All_Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 90.w),
          child: Text(
            'All Task',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
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
            Navigator.pushNamed(context, 'Addtask12');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 53.h, left: 12.w, right: 14.w),
        child: Column(
          children: [
            SizedBox(
              height: 61.h,
              width: 385.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: const Color(0xffD4C00B),
                ),
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
                                                    color: const Color(
                                                        0xffE43131)),
                                              ),
                                              content: Text(
                                                """Are you sure you want to delete Task""",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff000000)),
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
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0.r),
                                                                  ),
                                                                )),
                                                        onPressed: () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              'All_Task2');
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
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0.r),
                                                                  ),
                                                                )),
                                                        onPressed: () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              'All_Task2');
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
                                      // Navigator.pushNamed(context, 'All_Task2');
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
                                          context, 'Addtaskdetails6');
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
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 12.w, right: 13.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Title',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text(
                        '01.02.2023',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 61.h,
              width: 385.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: const Color(0xffD4C00B),
                ),
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
                                                    color: const Color(
                                                        0xffE43131)),
                                              ),
                                              content: Text(
                                                """Are you sure you want to delete Task""",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff000000)),
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
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0.r),
                                                                  ),
                                                                )),
                                                        onPressed: () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              'All_Task2');
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
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10.0.r),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0.r),
                                                                  ),
                                                                )),
                                                        onPressed: () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              'All_Task2');
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
                                      // Navigator.pushNamed(context, 'All_Task2');
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
                                          context, 'Addtaskdetails6');
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
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 12.w, right: 13.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Title',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text(
                        '03.07.2022',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
