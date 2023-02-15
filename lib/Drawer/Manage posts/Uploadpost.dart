// ignore: file_names
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zefyrka/zefyrka.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Uploadpost extends StatelessWidget {
  Uploadpost({super.key});

  final ZefyrController _controller = ZefyrController();
  final dropValue = ValueNotifier('');

  final dropOpcoes = [
    '   Job',
    '   Internship',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xff000000),
          onPressed: () {
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Upload post',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff000000)),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 66.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 192.h,
                color: const Color.fromRGBO(248, 239, 149, 0.26),
                child: Center(
                  child: Image.asset('Assets/Uploadpost.png'),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: dropValue,
                    builder: (context, value, child) {
                      return Container(
                        decoration: BoxDecoration(border: Border.all()),
                        width: 380.w,
                        child: DropdownButton2<String>(
                          dropdownWidth: 120,
                          dropdownDirection: DropdownDirection.left,
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down),
                          hint: const Text(
                            '   Job',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          underline: Container(),
                          value: (value.isEmpty) ? null : value,
                          onChanged: (escolha) =>
                              dropValue.value = escolha.toString(),
                          items: dropOpcoes
                              .map((op) => DropdownMenuItem(
                                    value: op,
                                    child: Text(
                                      op,
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                              .toList(),
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Add Company Name'),
              ),
              SizedBox(
                height: 9.h,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Company Details'),
              ),
              SizedBox(
                height: 11.h,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Add Roles and Responsibilities',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    SizedBox(
                      height: 100.h,
                      child: ZefyrEditor(
                        controller: _controller,
                      ),
                    ),
                    ZefyrToolbar.basic(controller: _controller),
                  ],
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Minimum Stipend in Month'),
              ),
              SizedBox(
                height: 47.h,
              ),
              SizedBox(
                  height: 57.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                      ),
                      child: Center(
                          child: Text(
                        'Upload',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: const Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                      onPressed: () {})),
              SizedBox(
                height: 31.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
