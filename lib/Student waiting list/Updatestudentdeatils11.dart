import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Updatestudentdetails11 extends StatelessWidget {
  const Updatestudentdetails11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Update Student details',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xff000000))),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 54.h, left: 15.w, right: 15.w, bottom: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Embedded Proposal',
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        uploadPdf();
                      },
                      child: Container(
                        height: 200.h,
                        width: 500.w,
                        color: const Color(0xffFAF8E4),
                        child: Center(
                          child: Image.asset(
                            "Assets/updatedetails.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Payment link:',
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'add payment link',
                      ),
                    ),
                  ]),
            ),
            SizedBox(
                height: 57.h,
                width: 450.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD4C00B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'SAVE',
                    style: TextStyle(
                        color: const Color(
                          0xffFFFFFF,
                        ),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ))
          ],
        ),
      ),
    );
  }

  Future<void> uploadPdf() async {
    var dio = Dio();

    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path ?? "");
      String fileName = file.path.split('/').last;

      FormData data = FormData.fromMap({
        'x-api-key': 'apikey',
        'file': await MultipartFile.fromFile(file.path, filename: fileName),
      });

      try {
        Response response = await dio.post(
          'https://api.pdf.co/v1/file/upload',
          data: data,
          onSendProgress: (sent, total) {
            print('Progress: ${sent / total * 100}%');
          },
        );

        if (response.statusCode == 200) {
          print('File uploaded successfully!');
          print('Response: ${response.data}');
        } else {
          print('File upload failed. Status code: ${response.statusCode}');
        }
      } catch (error) {
        print('Error uploading file: $error');
      }
    } else {
      print("No file selected");
    }
  }
}
