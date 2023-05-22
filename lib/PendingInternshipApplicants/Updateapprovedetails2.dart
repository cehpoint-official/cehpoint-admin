// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Updateapprovedetails2 extends StatefulWidget {
  @override
  State<Updateapprovedetails2> createState() => _Updateapprovedetails2State();
}

class _Updateapprovedetails2State extends State<Updateapprovedetails2> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Update approve details',
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
            Navigator.pushNamed(context, 'InternshipApplicantsDetails');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 75.h, left: 30.w, right: 30.w, bottom: 50.h),
        child: Column(
          children: [
            Center(
              child: Text(
                'Job approve details',
                style: TextStyle(
                    color: const Color(
                      0xffD4C00B,
                    ),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Add date',
                  suffixIcon: Image.asset('Assets/calender.png')),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat("yyyy-MM-dd").format(pickedDate);

                  setState(() {
                    dateController.text = formattedDate.toString();
                  });
                } else {
                  print("Not selected");
                }
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add time',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add meeting link'),
            ),
            SizedBox(
              height: 310.h,
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
                        // Navigator.pushNamed(context, 'Updateapprovedetails');
                      },
                      child: Text('Save',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
