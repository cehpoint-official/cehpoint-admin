import 'package:cehpoint_admin/Drawer/Upload%20videos/Add_video_&_description.dart';
import 'package:flutter/material.dart';

class Upload_videos extends StatelessWidget {
  const Upload_videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'Upload videos',
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
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Upload a new video',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
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
                  height: 167,
                  color: const Color.fromRGBO(212, 192, 11, 0.11),
                  child: Center(child: Image.asset('Assets/updatedetails.png')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Divider(
          thickness: 3,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Uploaded videos',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(child: Image.asset('Assets/Upload_videos1.png')),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Video description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Center(child: Image.asset('Assets/Upload_videos2.png'))
            ],
          ),
        ),
      ]),
    );
  }
}
