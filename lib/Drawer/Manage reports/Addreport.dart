// ignore: file_names
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addreport extends StatelessWidget {
  Addreport({super.key});
  final dropValue = ValueNotifier('');

  final dropOpcoes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text(
            'Add report',
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
            Navigator.pushNamed(context, 'Clientsweeklyreport');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 48.h, right: 5.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 55.h,
            width: 334.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
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
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, right: 16.w, top: 89.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: dropValue,
                                  builder: (context, value, child) {
                                    return Container(
                                      padding: EdgeInsets.only(
                                          right: 22.w, left: 50.w),
                                      decoration:
                                          BoxDecoration(border: Border.all()),
                                      child: DropdownButton2<String>(
                                          dropdownWidth: 100,
                                          dropdownDirection:
                                              DropdownDirection.left,
                                          isExpanded: true,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
                                          hint: Text(
                                            'Week 2',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18.sp,
                                                color: const Color(0xff000000)),
                                          ),
                                          underline: Container(),
                                          value: (value.isEmpty) ? null : value,
                                          onChanged: (escolha) => dropValue
                                              .value = escolha.toString(),
                                          items: null),
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Add report link',
                                  ),
                                ),
                              ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 55.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffD4C00B),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'Addreport');
                                  },
                                  child: Text('Save',
                                      style: TextStyle(
                                          color: Colors.white,
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
              child: Center(
                  child: Text(
                '+Add a week',
                style: TextStyle(
                    fontSize: 17.sp,
                    color: const Color(
                      0xffFFFFFF,
                    ),
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            'My Food Box Project',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.6)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Week 1 report',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Link:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'https://report.id=769%3A157&t=XtbCKaCwQ',
                // GZWheWo-0
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff2A55C3)),
              )
            ],
          ),
          Text(
            'GZWheWo-0',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff2A55C3)),
          )
        ]),
      ),
    );
  }
}
