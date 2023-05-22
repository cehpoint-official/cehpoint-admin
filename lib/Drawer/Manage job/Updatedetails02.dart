import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class Updatedetails02 extends StatefulWidget {
  const Updatedetails02({super.key});

  @override
  State<Updatedetails02> createState() => _Updatedetails02State();
}

class _Updatedetails02State extends State<Updatedetails02> {
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
          'Update details',
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
            Navigator.pushNamed(context, 'Manage_job');
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 100.h, left: 34.w, right: 32.w, bottom: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Add date',
                      suffixIcon: Image.asset('Assets/addtime.png')),
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
                  height: 18.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Image.asset('Assets/calender.png'),
                    border: OutlineInputBorder(),
                    hintText: 'Add time',
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add meeting link',
                  ),
                ),
              ],
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
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          text: 'Submitted Successfully!',
                        );
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
    ;
  }
}
