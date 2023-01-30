import 'package:flutter/material.dart';

class Premium_Projects extends StatelessWidget {
  const Premium_Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Premium Projects',
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
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          children: [
            Row(children: [
              Image.asset(
                'Assets/Client_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Client 1',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 230,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Client_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Client 2',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 230,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Image.asset(
                'Assets/Client_waiting_list.png',
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Client 3',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 230,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
    ;
  }
}