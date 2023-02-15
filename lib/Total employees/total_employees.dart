import 'package:cehpoint_admin/Total%20employees/Employeedetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class total_employees extends StatefulWidget {
  @override
  State<total_employees> createState() => _total_employeesState();
}

class Employee {
  String name;
  String title;
  String phone;
  String email;
  bool isSelected;

  Employee(
      {required this.name,
      required this.title,
      required this.phone,
      required this.email,
      required this.isSelected});
}

class _total_employeesState extends State<total_employees> {
  List<Employee> emp = [
    Employee(
        name: "Suraj Mitra",
        title: "Employee 1",
        phone: "6296704833",
        email: "suraj@gmail.com",
        isSelected: false),
    Employee(
        name: "Suraj Mitra",
        title: "Employee 2",
        phone: "6296704833",
        email: "suraj@gmail.com",
        isSelected: false),
    Employee(
        name: "Suraj Mitra",
        title: "Employee 3",
        phone: "6296704833",
        email: "suraj@gmail.com",
        isSelected: false),
    Employee(
        name: "Suraj Mitra",
        title: "Employee 4",
        phone: "6296704833",
        email: "suraj@gmail.com",
        isSelected: false),
  ];
  bool canSelect = false;
  int count = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All Employees',
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
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
        actions: [
          InkWell(
            child: Image.asset('Assets/totalemployees.png'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Delete Employee',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffE43131)),
                      ),
                      content: Text(
                        """Are you sure you want to delete “Employee 1 “""",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff000000)),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 47.h,
                              width: 139.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff2A55C3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0.r),
                                        bottomRight: Radius.circular(10.0.r),
                                        bottomLeft: Radius.circular(10.0.r),
                                        topLeft: Radius.circular(10.0.r),
                                      ),
                                    )),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'total_employees');
                                },
                                child: Text(
                                  'CANCEL',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 47.h,
                              width: 139.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffF92222),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0.r),
                                        bottomRight: Radius.circular(10.0.r),
                                        bottomLeft: Radius.circular(10.0.r),
                                        topLeft: Radius.circular(10.0.r),
                                      ),
                                    )),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'total_employees');
                                },
                                child: Text(
                                  'DELETE',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: ListView.builder(
          itemCount: emp.length,
          itemBuilder: (context, position) {
            return InkWell(
              onLongPress: () {
                if (!canSelect) {
                  canSelect = true;
                  setState(() {
                    emp[position].isSelected = !emp[position].isSelected;
                  });
                  emp[position].isSelected ? count++ : count--;
                }
              },
              onTap: () {
                if (canSelect) {
                  setState(() {
                    emp[position].isSelected = !emp[position].isSelected;
                  });
                  emp[position].isSelected ? count++ : count--;
                  if (count == -1) canSelect = false;
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employeedetails(),
                    ),
                  );
                }
              },
              child: Container(
                color: emp[position].isSelected
                    ? const Color.fromRGBO(212, 192, 11, 0.16)
                    : Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 16),
                              child: Image.asset('Assets/total_employees.png')),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                emp[position].title,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "NAME : ${emp[position].name}",
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
                                'Ph No. : +91 ${emp[position].phone}',
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
                                'EMAIL ID : ${emp[position].email}',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// // ignore: camel_case_types
// class total_employees extends StatefulWidget {
//   const total_employees({super.key});

//   @override
//   State<total_employees> createState() => _total_employeesState();
// }

// // ignore: camel_case_types
// class _total_employeesState extends State<total_employees> {
//   int idx = -1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'All Employees',
//             style: TextStyle(color: Colors.black87, fontSize: 18.sp),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.black87,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Dashboard');
//           },
//         ),
//         actions: [
//           InkWell(
//             child: Image.asset('Assets/totalemployees.png'),
//             onTap: () {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text(
//                         'Delete Employee',
//                         style: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w700,
//                             color: const Color(0xffE43131)),
//                       ),
//                       content: Text(
//                         """Are you sure you want to delete “Employee 1 “""",
//                         style: TextStyle(
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w600,
//                             color: const Color(0xff000000)),
//                       ),
//                       actions: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             SizedBox(
//                               height: 47.h,
//                               width: 139.w,
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0xffF92222),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10.0.r),
//                                         bottomRight: Radius.circular(10.0.r),
//                                         bottomLeft: Radius.circular(10.0.r),
//                                         topLeft: Radius.circular(10.0.r),
//                                       ),
//                                     )),
//                                 onPressed: () {
//                                   Navigator.pushNamed(
//                                       context, 'total_employees');
//                                 },
//                                 child: Text(
//                                   'DELETE',
//                                   style: TextStyle(
//                                       fontSize: 13.sp,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 47.h,
//                               width: 139.w,
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0xff2A55C3),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10.0.r),
//                                         bottomRight: Radius.circular(10.0.r),
//                                         bottomLeft: Radius.circular(10.0.r),
//                                         topLeft: Radius.circular(10.0.r),
//                                       ),
//                                     )),
//                                 onPressed: () {
//                                   Navigator.pushNamed(
//                                       context, 'total_employees');
//                                 },
//                                 child: Text(
//                                   'CANCEL',
//                                   style: TextStyle(
//                                       fontSize: 13.sp,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     );
//                   });
//             },
//           )
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(top: 60.h),
//         child: ListView.builder(
//           itemCount: 1,
//           itemBuilder: (context, position) {
//             return Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       idx = idx == position ? -1 : position;
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
//                     color: position == idx
//                         ? const Color.fromRGBO(212, 192, 11, 0.16)
//                         : Colors.transparent,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30.w, top: 10, bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset('Assets/total_employees.png'),
//                               SizedBox(
//                                 width: 16.w,
//                               ),
//                               Text(
//                                 'Employee 1',
//                                 style: TextStyle(
//                                     fontSize: 16.sp,
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 43.w),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'NAME : Suraj Mitra',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'Ph No. : +91 6296704833',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'EMAIL ID : suraj@gmail.com',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       idx = idx == position ? -1 : position;
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
//                     color: position == idx
//                         ? const Color.fromRGBO(212, 192, 11, 0.16)
//                         : Colors.transparent,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30.w, top: 10, bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset('Assets/total_employees.png'),
//                               SizedBox(
//                                 width: 16.w,
//                               ),
//                               Text(
//                                 'Employee 1',
//                                 style: TextStyle(
//                                     fontSize: 16.sp,
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 43.w),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'NAME : Suraj Mitra',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'Ph No. : +91 6296704833',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'EMAIL ID : suraj@gmail.com',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       idx = idx == position ? -1 : position;
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
//                     color: position == idx
//                         ? const Color.fromRGBO(212, 192, 11, 0.16)
//                         : Colors.transparent,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30.w, top: 10, bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset('Assets/total_employees.png'),
//                               SizedBox(
//                                 width: 16.w,
//                               ),
//                               Text(
//                                 'Employee 1',
//                                 style: TextStyle(
//                                     fontSize: 16.sp,
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 43.w),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'NAME : Suraj Mitra',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'Ph No. : +91 6296704833',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'EMAIL ID : suraj@gmail.com',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       idx = idx == position ? -1 : position;
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
//                     color: position == idx
//                         ? const Color.fromRGBO(212, 192, 11, 0.16)
//                         : Colors.transparent,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30.w, top: 10, bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset('Assets/total_employees.png'),
//                               SizedBox(
//                                 width: 16.w,
//                               ),
//                               Text(
//                                 'Employee 1',
//                                 style: TextStyle(
//                                     fontSize: 16.sp,
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 43.w),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'NAME : Suraj Mitra',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'Ph No. : +91 6296704833',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   'EMAIL ID : suraj@gmail.com',
//                                   style: TextStyle(
//                                     fontSize: 13.sp,
//                                     color: const Color.fromRGBO(0, 0, 0, 0.3),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
