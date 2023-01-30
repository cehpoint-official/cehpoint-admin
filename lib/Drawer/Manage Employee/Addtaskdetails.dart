// ignore: file_names

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:zefyrka/zefyrka.dart';

class Addtaskdetails extends StatelessWidget {
  Addtaskdetails({super.key});
  ZefyrController _controller = ZefyrController();

  final dropValue = ValueNotifier('');

  final dropOpcoes = [
    '    Task1',
    '    Task2',
    '    Task3',
    '    Task4',
    '    Task5',
    '    Task6',
    '    Task7',
    '    Task8',
    '    Task9',
    '    Task10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            color: const Color(0xff000000),
            onPressed: () {
              Navigator.pushNamed(context, 'Addtask1');
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              'Add task details',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xff000000)),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 20, top: 55),
          child: Column(children: [
            const Center(
              child: Text(
                'Task Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffD4C00B),
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 50),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'TASK TITLE'),
            ),
            const SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: dropValue,
              builder: (context, value, child) {
                return Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: DropdownButton2<String>(
                    dropdownWidth: 100,
                    dropdownDirection: DropdownDirection.left,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: const Text('   TASK NO.'),
                    underline: Container(),
                    value: (value.isEmpty) ? null : value,
                    onChanged: (escolha) =>
                        dropValue.value = escolha.toString(),
                    items: dropOpcoes
                        .map((op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                            ))
                        .toList(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'TASK COMPLETE DATE '),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
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
              height: 120,
            ),
            SizedBox(
              height: 59,
              width: 201,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffbacD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
          ]),
        ));
  }
}
