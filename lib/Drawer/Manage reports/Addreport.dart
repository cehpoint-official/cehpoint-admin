import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Addreport extends StatelessWidget {
  Addreport({super.key});
  final dropValue = ValueNotifier('');

  final dropOpcoes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'Add report',
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
            Navigator.pushNamed(context, 'Clientsweeklyreport');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 48, right: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 55,
            width: 334,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(212, 192, 11, 0.33),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 89),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: dropValue,
                                  builder: (context, value, child) {
                                    return Container(
                                      padding: const EdgeInsets.only(
                                          right: 22, left: 50),
                                      decoration:
                                          BoxDecoration(border: Border.all()),
                                      child: DropdownButton2<String>(
                                          dropdownWidth: 100,
                                          dropdownDirection:
                                              DropdownDirection.left,
                                          isExpanded: true,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
                                          hint: const Text(
                                            'Week 2',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                                color: Color(0xff000000)),
                                          ),
                                          underline: Container(),
                                          value: (value.isEmpty) ? null : value,
                                          onChanged: (escolha) => dropValue
                                              .value = escolha.toString(),
                                          items: null),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Add report link',
                                  ),
                                ),
                              ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 55,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffbacD4C00B),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'Addreport');
                                  },
                                  child: const Text('Save',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: const Center(
                  child: Text(
                '+Add a week',
                style: TextStyle(
                    color: Color(
                      0xffFFFFFF,
                    ),
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'My Food Box Project',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromRGBO(0, 0, 0, 0.6)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Week 1 report',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              Image.asset('Assets/pencil.png')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Link:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'https://report.id=769%3A157&t=XtbCKaCwQ',
                // GZWheWo-0
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2A55C3)),
              )
            ],
          ),
          const Text(
            'GZWheWo-0',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff2A55C3)),
          )
        ]),
      ),
    );
  }
}
