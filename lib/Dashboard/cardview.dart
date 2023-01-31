import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Carditem extends StatelessWidget {
  //  Carditem({super.key});
  String text;
  String count;
  String image;
  Color color;
  Function onPress;

  Carditem(
      {super.key,
      required this.count,
      required this.image,
      required this.text,
      required this.color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey, // Splash color
      onTap: () => onPress(), // Handle your onPress here.
      child: Container(
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      count,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white70,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                        width: 40.w, height: 40.h, child: Image.asset(image)),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.r),
            color: color,
          )),
    );
  }
}
