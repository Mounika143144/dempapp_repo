import 'package:demo/Providers/lList_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second2 extends StatefulWidget {
  const Second2({super.key});

  @override
  State<Second2> createState() => _Second2State();
}

class _Second2State extends State<Second2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numbersListProvider, child) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                numbersListProvider.add();
              },
              child: const Icon(Icons.add),
            ),
            appBar: AppBar(
              title: const Center(child: Text('B',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)))
            ),
            body: Column(
              children: [
                Text('Total numbers in a list: ${ numbersListProvider.numbers.last.toString()}'
                 ,
                  style: const TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 200,
                    width: double.maxFinite,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numbersListProvider.numbers.length,
                        itemBuilder: (context, index) {
                          return Center(
                              child: Text(
                            numbersListProvider.numbers[index].toString(),
                            style: const TextStyle(fontSize: 20),
                          ));
                        }),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
