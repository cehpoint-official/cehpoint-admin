// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllEmployee extends StatelessWidget {
  const AllEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text(
              'All Employee',
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
              Navigator.pushNamed(context, 'Dashboard');
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 90.h, left: 10.w, right: 10.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Employee 1',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'Addtask1');
                      },
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 30.h,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Employee 2',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 30.h,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Employee 3',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 30.h,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Employee 4',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 30.h,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Employee 5',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 30.h,
                thickness: 1,
              ),
            ],
          ),
        ));
  }
}
