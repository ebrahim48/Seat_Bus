import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/seat.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("41 seat bus"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: seats41.length - 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                      )),
                      child: Text('${seats41[index + 1]['0']['n']}')),
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          border: index == 0
                              ? null
                              : Border.all(
                                  width: 1,
                                )),
                      child: Text('${seats41[index + 1]['1']['n']}')),
                  index == 10
                      ? Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              border: index == 0
                                  ? null
                                  : Border.all(
                                      width: 1,
                                    )),
                          child: Text('${seats41[index + 1]['2']['n']}'))
                      : SizedBox(
                          width: 50,
                        ),
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          border: index == 0
                              ? null
                              : Border.all(
                                  width: 1,
                                )),
                      child: Text('${seats41[index + 1]['3']['n']}')),
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                      )),
                      child: Text('${seats41[index + 1]['4']['n']}')),
                ],
              ),
            );
          },
        ),
      ),
    );
    ;
  }
}
