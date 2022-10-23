import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/seat.dart';
import 'next_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("36 seat bus"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: seats36.length - 1,
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
                            child: Text('${seats36[index + 1]['0']['n']}')),
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
                            child: Text('${seats36[index + 1]['1']['n']}')),
                        const SizedBox(
                          width: 10,
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
                            child: Text('${seats36[index + 1]['3']['n']}')),
                        Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 1,
                            )),
                            child: Text('${seats36[index + 1]['4']['n']}')),
                      ],
                    ),
                  );
                },
              ),
            ),
            OutlinedButton(

                style: OutlinedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    side: BorderSide(color: Theme.of(context).primaryColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NextScreen(),
                      ));
                },
                child: Text("Next Trip")),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
