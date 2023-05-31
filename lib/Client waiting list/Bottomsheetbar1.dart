import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Updateclientdetails.dart';

class Bottomsheetbar1 extends StatelessWidget {
  const Bottomsheetbar1(
      {super.key,
      required this.txt,
      required this.pdfname,
      required this.oldpdf,
      required this.id,
      required this.pdfpath});
  final String txt;
  final String pdfname;
  final String oldpdf;
  final String id;
  final String pdfpath;
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> uploadPdf(String id, String link, List<int> fileBytes) async {
      Dio dio = Dio();

      File file = File(pdfpath);
      List<int> fileBytes = await file.readAsBytes();
      FormData formData = FormData.fromMap({
        'x-api-key': 'apikey',
        'id': id,
        'link': txt,
        'file': await MultipartFile.fromFile(file.path, filename: pdfname),
      });

      try {
        Response response = await dio.post(
          'https://api.pdf.co/v1/file/upload',
          // 'https://api.example.com/upload',
          data: formData,
          // options: Options(
          //   contentType: 'multipart/form-data',
          // ),
        );

        if (response.statusCode == 200) {
          print('Data uploaded successfully!');
          print('Response: ${response.data}');
        } else {
          print('Data upload failed. Status code: ${response.statusCode}');
        }
      } catch (error) {
        print('Error uploading data: $error');
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 175.h,
              width: double.infinity,
              color: const Color(0xffD4C00B).withOpacity(0.25),
              child: Padding(
                padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('Assets/bttomsheet.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('Assets/bottomsheet2.png'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          pdfname,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text('Payment link:',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
            TextButton(
              onPressed: () {
                _launchURL(txt);
              },
              child: Text(txt,
                  style: TextStyle(
                      color: const Color(0xff2A55C3),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500)),
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
                    Navigator.pop(
                      context,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Updateclientdetails(
                          oldpdf: pdfname,
                          id: id,
                        ),
                      ),
                    );
                  },
                  child: Text('Update',
                      style: TextStyle(
                          color: Colors.black87,
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
                  onPressed: () async {
                    File file = File(pdfpath);
                    List<int> fileBytes = await file.readAsBytes();
                    uploadPdf(id, txt, fileBytes);
                  },
                  child: Text('Send',
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
  }
}
