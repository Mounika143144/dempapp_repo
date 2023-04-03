import 'package:demo/Home_withPro/Second2.dart';
import 'package:demo/Providers/lList_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
 
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(builder: (context, numberProviderModel, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            numberProviderModel.add();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Center(child: Text('A',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),actions:[IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>const Second2()));
                
          },
          icon: const Icon(Icons.arrow_forward),
        ),]),
      body: 
       Column(
          children: [
            Text('Total numbers in a list: ${numberProviderModel.numbers.last.toString()}'
              ,
              style: const TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.builder(
                    itemCount: numberProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: Text(
                        numberProviderModel.numbers[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      ));
                    }),
              ),
            )
          ],
        ),
      
    ));
  }
}
