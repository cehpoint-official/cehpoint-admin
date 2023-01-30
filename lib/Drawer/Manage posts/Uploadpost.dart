import 'package:flutter/material.dart';
import 'package:zefyrka/zefyrka.dart';

class Uploadpost extends StatelessWidget {
  ZefyrController _controller = ZefyrController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xff000000),
          onPressed: () {
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text(
            'Upload post',
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Color(0xff000000)),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 66),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 192,
                color: Color.fromRGBO(248, 239, 149, 0.26),
                child: Center(
                  child: Image.asset('Assets/Uploadpost.png'),
                ),
              ),
              const SizedBox(
                height: 46,
              ),
              Container(
                height: 49,
                decoration: BoxDecoration(border: Border.all()),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Job',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Add Company Name'),
              ),
              const SizedBox(
                height: 9,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Company Details'),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Add Roles and Responsibilities',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                    SizedBox(
                      height: 100,
                      child: ZefyrEditor(
                        controller: _controller,
                      ),
                    ),
                    ZefyrToolbar.basic(controller: _controller),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Minimum Stipend in Month'),
              ),
              const SizedBox(
                height: 47,
              ),
              SizedBox(
                  height: 57,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffbacD4C00B),
                      ),
                      child: const Center(
                          child: Text(
                        'Upload',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                      onPressed: () {})),
              const SizedBox(
                height: 31,
              )
            ],
          ),
        ),
      ),
    );
  }
}
