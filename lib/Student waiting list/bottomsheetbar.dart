import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class bottomsheetbar extends StatelessWidget {
  const bottomsheetbar({super.key, required this.txt, required this.pdfname});
  final String txt;
  final String pdfname;
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
                          pdfname ,
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
                    Navigator.pushNamed(context, 'Updatestudentdetails11');
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
                  onPressed: () {
                    Navigator.pop(context);
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
