// ignore: file_names
import 'package:cehpoint_admin/Drawer/Upload%20videos/Add_video_&_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Upload_videos extends StatelessWidget {
  const Upload_videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text(
            'Upload videos',
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 28.h, left: 26.w, right: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upload a new video',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Addvideo12(),
                    ),
                  );
                },
                child: Container(
                  height: 167.h,
                  color: const Color.fromRGBO(212, 192, 11, 0.11),
                  child: Center(child: Image.asset('Assets/updatedetails.png')),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        const Divider(
          thickness: 3,
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  'Uploaded videos',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 0.5)),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(child: Image.asset('Assets/Upload_videos1.png')),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Video description',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 45.h,
              ),
              Center(child: Image.asset('Assets/Upload_videos2.png'))
            ],
          ),
        ),
      ]),
    );
  }
}
