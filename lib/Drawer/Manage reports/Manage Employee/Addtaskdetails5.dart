import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zefyrka/zefyrka.dart';

class Addtaskdetails5 extends StatelessWidget {
  Addtaskdetails5({super.key});
  final ZefyrController _controller = ZefyrController();

  final dropValue = ValueNotifier('');

  final dropOpcoes = [
    '    Task1',
    '    Task2',
    '    Task3',
    '    Task4',
    '    Task5',
    '    Task6',
    '    Task7',
    '    Task8',
    '    Task9',
    '    Task10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xff000000),
          onPressed: () {
            Navigator.pushNamed(context, 'Alltask');
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Add task details',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: const Color(0xff000000),
                fontSize: 18.sp),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 20.w, top: 55.h),
        child: Column(
          children: [
            Center(
              child: Text(
                'Task Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffD4C00B),
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 50.h),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'TASK TITLE'),
            ),
            SizedBox(height: 30.h),
            ValueListenableBuilder(
              valueListenable: dropValue,
              builder: (context, value, child) {
                return Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: DropdownButton2<String>(
                    dropdownWidth: 100.w,
                    dropdownDirection: DropdownDirection.left,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: const Text('   TASK NO.'),
                    underline: Container(),
                    value: (value.isEmpty) ? null : value,
                    onChanged: (escolha) =>
                        dropValue.value = escolha.toString(),
                    items: dropOpcoes
                        .map((op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                            ))
                        .toList(),
                  ),
                );
              },
            ),
            SizedBox(height: 30.h),
            const SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'TASK COMPLETE DATE '),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
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
              height: 120.h,
            ),
            SizedBox(
              height: 59.h,
              width: 201.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                ),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: const Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
