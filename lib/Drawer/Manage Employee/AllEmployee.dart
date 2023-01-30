import 'package:flutter/material.dart';

class AllEmployee extends StatelessWidget {
  const AllEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text(
              'All Employee',
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
          padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Employee 1',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'Addtask1');
                      },
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 30,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Employee 2',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 30,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Employee 3',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 30,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Employee 4',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 30,
                thickness: 1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/total_employees.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Employee 5',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 192, 11, 0.28),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 30,
                thickness: 1,
              ),
            ],
          ),
        ));
  }
}
