import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addvideo12 extends StatelessWidget {
  const Addvideo12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Add video & description',
            style: TextStyle(color: Colors.black87),
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
            Navigator.pushNamed(context, 'Upload_videos');
          },
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 54, left: 21, right: 21, bottom: 39),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 167,
                  color: const Color.fromRGBO(212, 192, 11, 0.11),
                  child: Center(child: Image.asset('Assets/updatedetails.png')),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Container(
                    height: 31,
                    width: 130,
                    color: const Color(0xffD4C00B),
                    child: const Center(
                      child: Text(
                        'Select file',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Add description'),
                ),
              ],
            ),
            Container(
              height: 49,
              color: const Color(0xffD4C00B),
              child: const Center(
                  child: Text(
                'Upload',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff)),
              )),
            )
          ],
        ),
      ),
    );
  }
}
